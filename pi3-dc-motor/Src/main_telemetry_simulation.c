/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "PRNG_LFSR.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
typedef struct {
	struct TelemetryUartRx {
		char data[16];
		/* size is the number of bytes buffered before calling HAL_UART_RxCpltCallback()
		 * i.e. HAL_UART_RxCpltCallback() will be triggered when there are 'size' bytes
		 * available to be read from hardware */
		uint8_t size;
	} rx;
	struct TelemetryUartTx {
		char data[32];
	} tx;
} TelemetryUart;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;

CAN_HandleTypeDef hcan;

TIM_HandleTypeDef htim2;

UART_HandleTypeDef huart1;

/* USER CODE BEGIN PV */

/* Few CAN global variables. Other config variables are within MX_CAN_init() function */
CAN_FilterTypeDef  sFilterConfig;
CAN_TxHeaderTypeDef TxHeader;
CAN_RxHeaderTypeDef RxHeader;
uint8_t TxData[8];
uint32_t TxMailbox;

TelemetryUart telemetry;

enum can_ids {
	ENGINE_ECU = 20,
	ENGINE_ECU_TEMP_L = 13,
	ENGINE_ECU_TEMP_R = 15,
	ENGINE_ECU_ROT_R = 17,
	ENGINE_ECU_ROT_L = 19,

	BATTERY_ECU = 30,
	BATTERY_ECU_VOLT = 29,
	BATTERY_ECU_CURR = 28,
	BATTERY_ECU_TEMP = 27,

	DIFF_ECU = 40,
	DIFF_ECU_ANG = 39,

	ACC_ECU = 50,
	ACC_ECU_G_X = 49,
	ACC_ECU_G_Y = 48,
	ACC_ECU_G_Z = 47,
};

typedef struct {
	uint8_t can_id;
	uint8_t data_per_packet;
	// values here are multiplied by 10
	uint16_t curr_value;
	uint16_t max_value;
	uint16_t min_value;
	uint16_t step;
} var_t;

typedef struct {
	uint8_t can_id;
	uint8_t vars_length;
	var_t vars[4];
} ecu_t;

ecu_t ecus[] = {
	{
			.can_id = ENGINE_ECU,
			.vars_length = 4,
			.vars = {
					{
							.can_id = ENGINE_ECU_TEMP_L,
							.max_value = 500,
							.min_value = 300,
							.step = 3
					},{
							.can_id = ENGINE_ECU_TEMP_R,
							.max_value = 500,
							.min_value = 300,
							.step = 3
					},{
							.can_id = ENGINE_ECU_ROT_R,
							.max_value = 30000,
							.min_value = 0,
							.step = 10
					},{
							.can_id = ENGINE_ECU_ROT_L,
							.max_value = 30000,
							.min_value = 0,
							.step = 10
					}

			}
	},{
			.can_id = BATTERY_ECU,
			.vars_length = 3,
			.vars = {
					{
							.can_id = BATTERY_ECU_VOLT,
							.max_value = 490,
							.min_value = 470,
							.step = 1
					},{
							.can_id = BATTERY_ECU_CURR,
							.max_value = 1900,
							.min_value = 2100,
							.step = 1
					},{
							.can_id = BATTERY_ECU_TEMP,
							.max_value = 500,
							.min_value = 300,
							.step = 3
					}
			}
	},{
			.can_id = DIFF_ECU,
			.vars_length = 1,
			.vars = {
					{
							.can_id = DIFF_ECU_ANG,
							.max_value = 300,
							.min_value = 0,
							.step = 10
					}
			}
	},{
			.can_id = ACC_ECU,
			.vars_length = 3,
			.vars = {
					{
							.can_id = ACC_ECU_G_X,
							.max_value = 20,
							.min_value = 0,
							.step = 1
					},{
							.can_id = ACC_ECU_G_Y,
							.max_value = 20,
							.min_value = 0,
							.step = 1
					},{
							.can_id = ACC_ECU_G_Z,
							.max_value = 20,
							.min_value = 0,
							.step = 1
					}
			}
	}
};


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_TIM2_Init(void);
static void MX_CAN_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_ADC1_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */
  

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM2_Init();
  MX_CAN_Init();
  MX_USART1_UART_Init();
  MX_ADC1_Init();
  /* USER CODE BEGIN 2 */
  HAL_TIM_Base_Start_IT(&htim2);

  telemetry.rx.size = 4;
  /* we only call this again in rx callback */
  HAL_UART_Receive_IT(&huart1, (uint8_t*)&telemetry.rx.data, telemetry.rx.size);

  // use ADC value for pseudo-random seed
  HAL_ADC_Start(&hadc1);
  HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY);
  init_LFSR(HAL_ADC_GetValue(&hadc1));

  // select ecus indexes randomly

  uint32_t ecus_length = sizeof(ecus) / sizeof(ecus[0]);
  uint32_t rand_indexes[ecus_length];

  for (int32_t i = 0; i < ecus_length; i++) {
	  // ecus can be repeated
	  rand_indexes[i] = prng_LFSR() % ecus_length;
  }

  // initial values for each variable

  // for each ecu
  for (uint32_t i = 0; i < ecus_length; i++) {

	  uint32_t index = rand_indexes[i];
	  ecu_t ecu = ecus[index];

	  // for each variable of ecu
	  for (uint32_t j = 0; j < ecu.vars_length; j++) {

		  var_t var = ecu.vars[j];

		  // random value
		  var.curr_value = prng_LFSR() % (var.max_value - var.min_value + 1);
		  var.curr_value += var.min_value;

	  }
  }


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  while (1)
  {

	  // for each ecu
	  for (uint32_t i = 0; i < ecus_length; i++) {

		  uint32_t index = rand_indexes[i];
		  ecu_t ecu = ecus[index];

		  // for each variable of ecu
		  for (uint32_t j = 0; j < ecu.vars_length; j++) {

			  var_t var = ecu.vars[j];


			  uint16_t data[4];
			  uint8_t d = 0;

			  // 4 data per time through uart
			  while (d < 4) {
				  // increment or decrement step in current value
				  if (var.curr_value >= var.max_value)
					  var.curr_value = var.max_value - var.step;
				  else if (var.curr_value <= var.min_value)
					  var.curr_value = var.min_value + var.step;
				  if (prng_LFSR() & 0x00000001) // odd
					  var.curr_value -= var.step;
				  else // pair
					  var.curr_value += var.step;

				  data[d++] = var.curr_value;
			  }

			  // fill buffer
			  uint32_t bytes = 0;
			  char buffer[32];
			  bytes = snprintf(buffer,
					  sizeof(buffer),
					  "%x,%x,%x,%x,%x\r\n",
					  var.can_id,
					  data[0],
					  data[1],
					  data[2],
					  data[3]);

			  // send through telemetry
			  HAL_UART_Transmit_IT(&huart1, (uint8_t*)buffer, bytes);
			  HAL_Delay(100);

		  }
	  }

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_ADC;
  PeriphClkInit.AdcClockSelection = RCC_ADCPCLK2_DIV2;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */
  /** Common config 
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ScanConvMode = ADC_SCAN_DISABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 1;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel 
  */
  sConfig.Channel = ADC_CHANNEL_0;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief CAN Initialization Function
  * @param None
  * @retval None
  */
static void MX_CAN_Init(void)
{

  /* USER CODE BEGIN CAN_Init 0 */

  /* USER CODE END CAN_Init 0 */

  /* USER CODE BEGIN CAN_Init 1 */

  /* USER CODE END CAN_Init 1 */
  hcan.Instance = CAN1;
  hcan.Init.Prescaler = 18;
  hcan.Init.Mode = CAN_MODE_NORMAL;
  hcan.Init.SyncJumpWidth = CAN_SJW_1TQ;
  hcan.Init.TimeSeg1 = CAN_BS1_13TQ;
  hcan.Init.TimeSeg2 = CAN_BS2_2TQ;
  hcan.Init.TimeTriggeredMode = DISABLE;
  hcan.Init.AutoBusOff = DISABLE;
  hcan.Init.AutoWakeUp = DISABLE;
  hcan.Init.AutoRetransmission = DISABLE;
  hcan.Init.ReceiveFifoLocked = DISABLE;
  hcan.Init.TransmitFifoPriority = DISABLE;
  if (HAL_CAN_Init(&hcan) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN CAN_Init 2 */

  /* Configure the CAN Filter */
  sFilterConfig.FilterBank = 0;
  sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK; //CAN_FILTERMODE_IDLIST;
  sFilterConfig.FilterScale = CAN_FILTERSCALE_32BIT;
  sFilterConfig.FilterIdHigh = 0x0000;
  sFilterConfig.FilterIdLow = 0x0000;
  sFilterConfig.FilterMaskIdHigh = 0x0000;
  sFilterConfig.FilterMaskIdLow = 0x0000;
  sFilterConfig.FilterFIFOAssignment = CAN_RX_FIFO0;
  sFilterConfig.FilterActivation = CAN_FILTER_ENABLE;

  if (HAL_CAN_ConfigFilter(&hcan, &sFilterConfig) != HAL_OK)
  {
    /* Filter configuration Error */
    Error_Handler();
  }

  /* Start the CAN peripheral */
  if (HAL_CAN_Start(&hcan) != HAL_OK)
  {
    /* Start Error */
    Error_Handler();
  }

  /* Activate CAN RX notification */
  if (HAL_CAN_ActivateNotification(&hcan, CAN_IT_RX_FIFO0_MSG_PENDING) != HAL_OK)
  {
    /* Notification Error */
    Error_Handler();
  }

  /* Configure Transmission process */

  // this is the CAN BUS ID we change for each ECU!
  TxHeader.StdId = 0x001;
  //TxHeader.ExtId = 0x001;
  TxHeader.RTR = CAN_RTR_DATA;
  // amount of bytes to be transmitted in one can bus frame (max = 8).
  TxHeader.DLC = 2;
  TxHeader.IDE = CAN_ID_STD;
  TxHeader.TransmitGlobalTime = DISABLE;

  /* USER CODE END CAN_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 7;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 99;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 57600;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

}

/* USER CODE BEGIN 4 */

/* we enter here when telemetry uart received byte(s) */
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	__HAL_UART_FLUSH_DRREGISTER(&huart1);
	 /* we can change rx.size here so the next HAL_UART_RxCpltCallback()
	  * will be called when rx.size bytes were received in uart */
	HAL_UART_Receive_IT(&huart1, (uint8_t*)&telemetry.rx.data, telemetry.rx.size);
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
