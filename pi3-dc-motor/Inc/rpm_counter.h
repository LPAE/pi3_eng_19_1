/*
 * rpm_counter.h
 *
 *  Created on: 16 de mar de 2019
 *      Author: rafae
 */

#ifndef RPM_COUNTER_H_
#define RPM_COUNTER_H_

#include "stm32f1xx_hal.h"

//----------------Ports and pins configurations----------------//

#define RPM_COUNTER_TIMER_LEFT 	TIM4		//Timer that will be used for calculate time and interruptions
#define RPM_COUNTER_TIMER_RIGHT TIM3
#define EXTI_PIN_LEFT			GPIO_PIN_0  //Pin that will occur the external interruption
#define EXTI_PIN_RIGHT			GPIO_PIN_1
#define RIGHT_ID				1
#define LEFT_ID					2
//----------------Timer configurations----------------//

#define TIMER_COUNTER_IN_us			1			//1 if the time interruption occur in microsecond, 0 for miliseconds

#if(TIMER_COUNTER_IN_us)
	#define PERIOD_TIME_us 			10			//Max Value that counter can hit in microseconds
	#define INTERRUPTION_TIME_usR 	100			//Interruption event time in microseconds
	#define INTERRUPTION_TIME_usL	100
#else
	#define PERIOD_TIME_ms 			100			//Max Value that counter can hit in miliseconds
	#define INTERRUPTION_TIME_ms 	100			//Interruption event time in miliseconds
#endif

//----------------rpm counter configurations----------------//

#define RPM							0			//1 if the user whants rotation per minute, 0 for seconds

#if(RPM)
	#define RPM_MINUTE				60			//do not modify
#endif

#define RPM_DIVISION				0			//1 if user wants the rpm should be divided by some value, otherwise, 0
#define RPM_MULTIPLICATION			0			//1 if user wants the rpm should be multiplied by some value, otherwise, 0

#if(RPM_DIVISION)
	#define RPM_DIVISION_VALUE		7
#endif

#if( RPM_MULTIPLICATION)
	#define RPM_MULTIPLICATION_VALUE 1
#endif

#define RPM_ERROR_COMPENSATION		0		//value to compensate some error, 0 to don't compensate

//----------------LED configurations----------------//

//defines if the user want to use a blink led to show the external interruption
#define LED_BLINK				1			//1 led blink, otherwise, 0

#if(LED_BLINK)
	#define LED_PIN 			GPIO_PIN_13	//led pin, for bluepill internal led use GPIO_PIN_13
	#define LED_PORT 			GPIOC		////led port, for bluepill internal led use GPIOC
#endif

//----------------Average mobile----------------//

#define AVERAGE_MOBILE 			 	1		//1 to use avarage mobile filter, otherwise 0

#if(AVERAGE_MOBILE)
#define AVERAGE_MOBILE_BUFFER_SIZE	4		//number of values to calculate the avarage
#define AVERAGE_MOBILE_DIV			2		//bit shifting -> SUM_OF_VALUES >> AVARAGE_MOBILE_DIV
#endif


// function prototypes
void rpm_get_counter(uint32_t id); //Call this function inside of where HAL_TIM_PeriodElapsedCallback function is implemented
//void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);
void update_time(uint32_t id);
uint32_t calculate_rpm(uint32_t id);


//Copy to main function
//void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){
//if(GPIO_Pin == EXTI_PIN)
//	{
//	update_timer();
//	}
//}



#endif /* RPM_COUNTER_H_ */
