

 #ifndef __USER_CAN_H
 #define __USER_CAN_H
 #endif
 
 
#include <stm32f1xx_hal.h>
#include <stm32f1xx_hal_can.h>
#include <stm32f1xx_it.h>
#include <USER_CAN_DATA.h>
#include <main.h>

void sendCanMessage(uint32_t __MSG_ID, uint8_t __MSG_LENGTH, uint8_t __Data);

