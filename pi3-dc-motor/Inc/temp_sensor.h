/*
 * temp_sensor.h
 *
 *  Created on: 5 de abr de 2019
 *      Author: rafae
 */

#ifndef TEMP_SENSOR_H_
#define TEMP_SENSOR_H_

#include <stdlib.h>
#include "stm32f1xx_hal.h"

#define ADC_V_REF 					326		// adc vdda *100. e.g. 330 for 3,3 V
#define ADC_MULTIPLIER				1
#define ADC_RESOLUTION 				4096	// 2^n adc bits resolution
#define ADC_ERROR_COMPENSATOR 		0
#define ADC_TEMPERATURE_DIVISION	100
#define AMPLIFICATION_RATIO			3		// amplifier gain
#define AMPLIFICATION_OFFSET		10		// if the amplifier has some error offset modify here. e.g. 10 for 10mV

#define SUBTRACTOR_VOLTAGE			1540	// subtractor voltage in mV
#define SUBTRACTOR_VOLTAGE_2		1540	// subtractor voltage in mV
#define DRIVER_VOLTAGE				5000	// motor controller power supply in mV
#define DRIVER_RESISTANCE			1000	// motor controller resistance in ohms

#define ADC_MOVING_AVERAGE_TIMER	TIM2	// timer instance from timer interruption
#define MOVING_AVERAGE_SIZE			128
#define MOVING_AVERAGE_DIVISION 	7		// how many times will be shifted left for bit division. e.g. for 4 data use 2, for 8 use 3 and so on


// Sensor parameters
#define LINEAR_COEFFICIENT 			-89090
#define ANGULAR_COEFFICIENT			194


void adc_send_value(void);	// IMPORTANT: CALL THIS FUNCTION WHEN TIMER INTERRUPTION OCUURS

uint32_t get_temperature(uint32_t id);

#endif /* TEMP_SENSOR_H_ */
