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


void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);


typedef enum { OFF = 0, Speed1 = 1, ON = 1, Speed2 =2} state ;




void wiper(void);
void powerWiper(state Wiper_state);
state getWiperState(void);
void setWiperState(state);


#define wiper_periode 20
#define wiper_starting_DutyCycle_pourcentage 2.5
#define wiper_ending_DutyCycle_pourcentage 12.5

#define SetWiperPourcentage(p)  htim2.Instance->CCR1=(wiper_periode*p/100)

#endif
