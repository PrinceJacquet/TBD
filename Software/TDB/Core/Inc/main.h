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
typedef enum { OFF = 0, Speed1 = 1, ON = 1, Speed2 =2} state ;
//extern state WIPERSTATE = OFF;

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
void wiper(void);
void powerWiper(state Wiper_state);
state getWiperState(void);
void setWiperState(state);
/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define pwm_wiper_Pin GPIO_PIN_0
#define pwm_wiper_GPIO_Port GPIOA
#define int_2_Pin GPIO_PIN_6
#define int_2_GPIO_Port GPIOA
#define int_2_EXTI_IRQn EXTI9_5_IRQn
#define control_clim_power_Pin GPIO_PIN_14
#define control_clim_power_GPIO_Port GPIOB
#define control_wiper_power_Pin GPIO_PIN_15
#define control_wiper_power_GPIO_Port GPIOB
#define led_idle_Pin GPIO_PIN_9
#define led_idle_GPIO_Port GPIOC
#define int_5_Pin GPIO_PIN_9
#define int_5_GPIO_Port GPIOA
#define int_5_EXTI_IRQn EXTI9_5_IRQn
#define int_4_Pin GPIO_PIN_10
#define int_4_GPIO_Port GPIOC
#define int_4_EXTI_IRQn EXTI15_10_IRQn
#define plus_moins_Pin GPIO_PIN_12
#define plus_moins_GPIO_Port GPIOC
#define plus_moins_EXTI_IRQn EXTI15_10_IRQn
#define int_1_Pin GPIO_PIN_5
#define int_1_GPIO_Port GPIOB
#define int_1_EXTI_IRQn EXTI9_5_IRQn
#define int_3_Pin GPIO_PIN_8
#define int_3_GPIO_Port GPIOB
#define int_3_EXTI_IRQn EXTI9_5_IRQn
/* USER CODE BEGIN Private defines */
#define wiper_periode 1000
#define led_idle_DutyCycle(p) htim3.Instance->CCR4=p
#define SetWiperPourcentage(p) htim2.Instance->CCR1=(wiper_periode/100*p)
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
