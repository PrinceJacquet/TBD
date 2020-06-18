/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define pwm_wiper_Pin GPIO_PIN_0
#define pwm_wiper_GPIO_Port GPIOA
#define int_2_Pin GPIO_PIN_6
#define int_2_GPIO_Port GPIOA
#define control_clim_power_Pin GPIO_PIN_14
#define control_clim_power_GPIO_Port GPIOB
#define control_wiper_power_Pin GPIO_PIN_15
#define control_wiper_power_GPIO_Port GPIOB
#define led_idle_Pin GPIO_PIN_9
#define led_idle_GPIO_Port GPIOC
#define wiper_1_Pin GPIO_PIN_9
#define wiper_1_GPIO_Port GPIOA
#define wiper_2_Pin GPIO_PIN_10
#define wiper_2_GPIO_Port GPIOC
#define plus_moins_Pin GPIO_PIN_12
#define plus_moins_GPIO_Port GPIOC
#define int_1_Pin GPIO_PIN_5
#define int_1_GPIO_Port GPIOB
#define int_3_Pin GPIO_PIN_8
#define int_3_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
