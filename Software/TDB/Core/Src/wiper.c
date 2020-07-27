/*
 * wiper.c
 *
 *  Created on: Jun 26, 2020
 *  Author: Prince
 */

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"
#include "main.h"
#include "wiper.h"

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

extern CAN_HandleTypeDef hcan;

extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;

extern DMA_HandleTypeDef hdma_memtomem_dma1_channel1;

/* USER CODE END Includes */


 void powerWiper(state Wiper_state)
{
	if ( Wiper_state == OFF){HAL_GPIO_WritePin(control_wiper_power_GPIO_Port, control_wiper_power_Pin, 0);SetWiperPourcentage(0);}
	else {HAL_GPIO_WritePin(control_wiper_power_GPIO_Port, control_wiper_power_Pin, 1);}
}



void setWiperState(state STATE) //Control the period of TIM_1 to change the speed incrementation of DC of TIM2
{
	switch(STATE)
	{
		case OFF:
			powerWiper(STATE);
			break;
			//set tim 1 period so it update tim2 pwm DC :
		case Speed1:
			//SetWiperPourcentage(wiper_starting_DutyCycle_pourcentage);
			powerWiper(ON);
			htim1.Instance->ARR= wiper_full_speed_swing_period;


			break;
		case Speed2:
			//SetWiperPourcentage(wiper_ending_DutyCycle_pourcentage);
			powerWiper(ON);
			htim1.Instance->ARR= wiper_half_speed_swing_period;
			break;
		default:
			powerWiper(OFF);
	}
}
