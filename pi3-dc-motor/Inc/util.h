/*
 * util.h
 *
 *  Created on: 21 de jun de 2019
 *      Author: rgnagel
 */

#ifndef UTIL_H_
#define UTIL_H_

/**
 * this function inputs a 16 bit vector and outputs this data into a 8 bit vector
 * the order of the data is {LSB, MSB, LSB, MSB, ...}
 * @data: vector of data
 * @buffer: buffer to store data
 **/
void encode_vec_16_to_8(uint16_t data[], uint8_t buffer[])
{
	buffer[0] = data[0] & 0xFF;
	buffer[1] = (data[0] >> 8) & 0xFF;

	buffer[2] = data[1] & 0xFF;
	buffer[3] = (data[1] >> 8) & 0xFF;

	buffer[4] = data[2] & 0xFF;
	buffer[5] = (data[2] >> 8) & 0xFF;

	buffer[6] = data[3] & 0xFF;
	buffer[7] = (data[3] >> 8) & 0xFF;
}

void encode_vec_16_to_8_var(uint16_t data[], uint8_t buffer[], uint8_t data_length)
{
	for (uint8_t i = 0; i < data_length; i++) {
		uint8_t j = i * 2;
		buffer[j] = data[i] & 0xFF;
		buffer[j + 1] = (data[i] >> 8) & 0xFF;
	}
}

/**
 * this function inputs a 8 bit vector and outputs this data into a 16 bit vector
 * the order of the data is {LSB, MSB, LSB, MSB, ...}
 * @data: vector of data
 * @buffer: buffer to store data
 **/
void decode_vec_8_to_16(uint8_t data[], uint16_t buffer[])
{
  /* first index is LSB and second is MSB */
  buffer[0] = (data[1] << 8) + data[0];
  buffer[1] = (data[3] << 8) + data[2];
  buffer[2] = (data[5] << 8) + data[4];
  buffer[3] = (data[7] << 8) + data[6];
}
  
		   
#endif /* UTIL_H_ */
