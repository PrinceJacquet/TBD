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
	typedef enum { Stoped =0, Working = 1, Speeding =2}State;
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
#define clim_sw_Pin GPIO_PIN_6
#define clim_sw_GPIO_Port GPIOA
#define clim_sw_EXTI_IRQn EXTI9_5_IRQn
#define control_clim_power_Pin GPIO_PIN_14
#define control_clim_power_GPIO_Port GPIOB
#define control_wiper_power_Pin GPIO_PIN_15
#define control_wiper_power_GPIO_Port GPIOB
#define led_status_Pin GPIO_PIN_9
#define led_status_GPIO_Port GPIOC
#define front_light_Pin GPIO_PIN_9
#define front_light_GPIO_Port GPIOA
#define front_light_EXTI_IRQn EXTI9_5_IRQn
#define back_light_Pin GPIO_PIN_10
#define back_light_GPIO_Port GPIOC
#define back_light_EXTI_IRQn EXTI15_10_IRQn
#define pota_3V_Pin GPIO_PIN_12
#define pota_3V_GPIO_Port GPIOC
#define break_sw_Pin GPIO_PIN_5
#define break_sw_GPIO_Port GPIOB
#define break_sw_EXTI_IRQn EXTI9_5_IRQn
#define wiper_sw_Pin GPIO_PIN_8
#define wiper_sw_GPIO_Port GPIOB
#define wiper_sw_EXTI_IRQn EXTI9_5_IRQn
/* USER CODE BEGIN Private defines */

//hardware missing
#define break_status_Pin GPIO_PIN_X
#define break_status_GPIO_Port GPIOX

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
