/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : wiper.h
  * @brief          : Header for wiper.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __WIPER_H
#define __WIPER_H


/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"
#include "main.h"
#include <math.h>


extern void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);
void Error_Handler(void);



typedef enum { OFF = 0, Speed1 = 1, ON = 1, Speed2 =2} state ;
extern state WIPERSTATE;




void powerWiper(state Wiper_state);
void setWiperState(state);


#define wiper_period 2000
#define wiper_full_speed_swing_period 1500
#define wiper_half_speed_swing_period 850
#define wiper_starting_DutyCycle_pourcentage 5
#define wiper_ending_DutyCycle_pourcentage 10
#define SetWiperPourcentage(p)  htim2.Instance->CCR1=(wiper_period*p/100)


#endif
