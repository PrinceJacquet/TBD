/*
 * wiper.c
 *
 *  Created on: Jun 26, 2020
 *  Author: Prince
 */

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "wiper.h"
/* USER CODE END Includes */
extern state WIPERSTATE;

 void powerWiper(state Wiper_state)
{
	if(Wiper_state == ON){HAL_GPIO_WritePin(control_wiper_power_GPIO_Port, control_wiper_power_Pin, 1);}
	else if ( Wiper_state == OFF){HAL_GPIO_WritePin(control_wiper_power_GPIO_Port, control_wiper_power_Pin, 0);}
	else {HAL_GPIO_WritePin(control_wiper_power_GPIO_Port, control_wiper_power_Pin, 1);}
}

void wiper(void)
{
	WIPERSTATE = (WIPERSTATE + 1)%3;
	setWiperState(WIPERSTATE);
	if (WIPERSTATE == OFF){powerWiper(OFF);}
	else{powerWiper(ON);}
}

void setWiperState(state STATE) //Control the period of TIM_1 to change the speed incrementation of DC of TIM2
{
	switch(STATE)
	{
		case OFF:
			powerWiper(OFF);
			break;
//set tim 1 period so it update tim2 pwm DC :
		case Speed1:
			//htim1.Init.Period = 1500-1;
			break;
		case Speed2:
			//htim1.Init.Period = 500;
			break;
		default:
			powerWiper(OFF);
	}
}
