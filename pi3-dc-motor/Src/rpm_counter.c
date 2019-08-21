/*
 * rpm_counter.c
 *
 *  Created on: 16 de mar de 2019
 *      Author: rafael hiller
 */

#include "rpm_counter.h"

extern TIM_HandleTypeDef htim2;

//variables to compute interruptions and counter values
volatile uint32_t counter_left = 0, time_total_left = 0, counter_right = 0, time_total_right = 0;


#if(AVERAGE_MOBILE)
volatile uint32_t average_mobile_buffer_left[AVERAGE_MOBILE_BUFFER_SIZE], average_mobile_buffer_right[AVERAGE_MOBILE_BUFFER_SIZE], i_left = 0, i_right = 0;
#endif

//called from timer interruption
inline void rpm_get_counter(uint32_t id){

	if (id == LEFT_ID) {
		counter_left++;

		if (counter_left >= 2000000)
			time_total_left = 0;
	}
	if (id == RIGHT_ID) {
		counter_right++;

		if (counter_right >= 2000000)
			time_total_right = 0;

	}
}


//called from external it
inline void update_time(uint32_t id) {

	if (id == LEFT_ID) {

			RPM_COUNTER_TIMER_LEFT->CNT = 0;

			#if(AVERAGE_MOBILE)
				average_mobile_buffer_left[i_left] = counter_left;
				i_left++;
				if (i_left == AVERAGE_MOBILE_BUFFER_SIZE)
					i_left = 0;
			#endif

			counter_left = 0;
		}

	if (id == RIGHT_ID) {

			RPM_COUNTER_TIMER_RIGHT->CNT = 0;

			if (LED_BLINK)
				HAL_GPIO_TogglePin(LED_PORT, LED_PIN);

			#if(AVERAGE_MOBILE)

			average_mobile_buffer_right[i_right] = counter_right;
			i_right++;
			if (i_right == AVERAGE_MOBILE_BUFFER_SIZE)
				i_right = 0;

			#endif

			counter_right = 0;
		}

}
/**
 * @brief calculate rpm using the number of timer interruption in one external interruption
 * @param None
 * @retval uint32_t rotation value in rpm
 */
inline uint32_t calculate_rpm(uint32_t id) {
	uint32_t freq = 0;

	if (id == LEFT_ID) {
		uint32_t somaL = 0;

		#if(AVERAGE_MOBILE)
			for (uint8_t j = 0; j < AVERAGE_MOBILE_BUFFER_SIZE; j++) {
					somaL = somaL + average_mobile_buffer_left[j];
				}

			somaL = somaL >> AVERAGE_MOBILE_DIV;

			if(counter_left >= 2000000)
				time_total_left = 0;

		#endif

	#if(TIMER_COUNTER_IN_us)
			time_total_left = INTERRUPTION_TIME_usL * somaL;
	#endif

	#if(TIMER_COUNTER_IN_ms)
			time_total_left = INTERRUPTION_TIME_ms * somaL;
	#endif

		freq = 10000000 / time_total_left + RPM_ERROR_COMPENSATION;

#if(RPM)
		freq = freq * RPM_MINUTE;
#endif

#if(RPM_DIVISION)
		freq = freq / RPM_DIVISION_VALUE;
#endif

#if(RPM_MULTIPLICATION)
		freq = freq * RPM_MULTIPLICATION_VALUE;
#endif

		return freq;
	}

	if (id == RIGHT_ID) {

		uint32_t somaR = 0;

		#if(AVERAGE_MOBILE)

			for (uint8_t j = 0; j < AVERAGE_MOBILE_BUFFER_SIZE; j++) {
				somaR = somaR + average_mobile_buffer_right[j];
				}
			somaR = somaR >> AVERAGE_MOBILE_DIV;

			if(counter_right >= 2000000)
				time_total_right = 0;

		#endif

	#if(TIMER_COUNTER_IN_us)
			time_total_right = INTERRUPTION_TIME_usR * somaR;
	#endif

	#if(TIMER_COUNTER_IN_ms)
			time_total_right = INTERRUPTION_TIME_ms * somaR;
	#endif

		freq = 10000000 / time_total_right + RPM_ERROR_COMPENSATION;

#if(RPM)
		freq = freq * RPM_MINUTE;
#endif

#if(RPM_DIVISION)
		freq = freq / RPM_DIVISION_VALUE;
#endif

#if(RPM_MULTIPLICATION)
		freq = freq * RPM_MULTIPLICATION_VALUE;
#endif

		return freq;
	}
	else
		return 0;
}
