#ifndef TIM_TDB_H
#define TIM_TDB_H

#include "main.h"
#include "stm32f1xx_hal.h"
#include "USER_CAN_DATA.h"

#define AT07_BRAKES_CMD 0x424
#define AT07_BRAKES_RESP 0x425

#define TIM_brakes_ID (AT07_BRAKES_CMD << 16) + (BACK_LIGHT_ADDR << 8) + DASHBOARD_ADDR
#define TIM_lights_ID (AT07_LIGHTS_CMD << 16) + (GLOBAL_LIGHT_ADDR << 8) + DASHBOARD_ADDR 
#define TIM_F_lights_ID (AT07_LIGHTS_CMD << 16) + (FRONT_LIGHT_ADDR << 8) + DASHBOARD_ADDR
#define TIM_B_lights_ID (AT07_LIGHTS_CMD << 16) + (BACK_LIGHT_ADDR << 8) + DASHBOARD_ADDR

//volatile static CanTxMsgTypeDef tim_can;
volatile static CAN_HandleTypeDef *TIM_CAN_HandleTypeDef;
volatile static uint8_t TIM_lights_ON;
volatile static uint8_t TIM_brakes_ON;
volatile static uint8_t TIM_wiperCMD_ON;
volatile static uint8_t TIM_wiperSpeed[2];


void TIM_TDB_Init(CAN_HandleTypeDef *TIM_CAN_HandleTypeDef);
void TIM_CAN_Send(uint32_t ID, uint32_t data);
void TIM_Set_brakes(void);
void TIM_Set_lights(void);
void TIM_Run_wiper(void);
//void TIM_Set_wiper(void);

#endif
