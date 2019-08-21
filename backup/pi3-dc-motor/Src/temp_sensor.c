#include "temp_sensor.h"
#include <stdlib.h>
extern ADC_HandleTypeDef hadc1;

//variables to process adc value and temperature
static uint32_t adc_value, temp;

//moving avarage variables
volatile uint32_t moving_average_buffer1[MOVING_AVERAGE_SIZE], moving_average_buffer2[MOVING_AVERAGE_SIZE];

//moving avarage index counter
static uint8_t i = 0 ;


/**
 * adc send value
 * function called when timer interruption occurs
 * add to moving average buffer adc conversion value
 * **/
void adc_send_value(void) {

	HAL_ADC_Start(&hadc1);

	HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY);

	moving_average_buffer1[i] = HAL_ADC_GetValue(&hadc1);

	HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY);

	moving_average_buffer2[i] = HAL_ADC_GetValue(&hadc1);

	HAL_ADC_Stop(&hadc1);

	i++;

	if (i == MOVING_AVERAGE_SIZE)
		i = 0;

}

/**
 * get temperature
 * function called to get moving average mean converted for voltage value
 * or temperature value, according to sensor's parameters
 * param: id -> left or right engine id.
 * return: uit32_t value with one decimal digit.
 * **/
uint32_t get_temperature(uint32_t id) {

	uint32_t res;

	adc_value = 0;

	if (id == 1) {

		for (uint8_t j = 0; j < MOVING_AVERAGE_SIZE; j++) {
			adc_value = adc_value + moving_average_buffer1[j];
		}

		adc_value = adc_value >> MOVING_AVERAGE_DIVISION;

		adc_value = (adc_value * ADC_V_REF * ADC_MULTIPLIER) / ADC_RESOLUTION
				+ ADC_ERROR_COMPENSATOR;

		adc_value = (adc_value * AMPLIFICATION_OFFSET) / AMPLIFICATION_RATIO; //value before amplifier

		adc_value = adc_value + SUBTRACTOR_VOLTAGE; //value before subtractor;

		res = (DRIVER_RESISTANCE * adc_value) / (DRIVER_VOLTAGE - adc_value); //sensor resistance

		temp = (ANGULAR_COEFFICIENT * res + LINEAR_COEFFICIENT) //temperature
				/ ADC_TEMPERATURE_DIVISION;

		return adc_value;
	}
	if (id == 2) {

		for (uint8_t j = 0; j < MOVING_AVERAGE_SIZE; j++) {
			adc_value = adc_value + moving_average_buffer2[j];
		}

		adc_value = adc_value >> MOVING_AVERAGE_DIVISION;

		adc_value = (adc_value * ADC_V_REF * ADC_MULTIPLIER) / ADC_RESOLUTION
				+ ADC_ERROR_COMPENSATOR;

		adc_value = (adc_value * AMPLIFICATION_OFFSET) / AMPLIFICATION_RATIO; //value before amplifier

		adc_value = adc_value + SUBTRACTOR_VOLTAGE_2; //value before subtractor;

		res = (DRIVER_RESISTANCE * adc_value) / (DRIVER_VOLTAGE - adc_value); //sensor resistance

		temp = (ANGULAR_COEFFICIENT * res + LINEAR_COEFFICIENT) //temperature
				/ ADC_TEMPERATURE_DIVISION;

		return adc_value;
	}

	return 0;
}
