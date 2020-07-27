//Prince Jacquet
//With the guidance of Sofiane and Cyril
// V0.0 : functionnal file for specific project "TDB"

//definir les fonctions pour la communication CAN 

#include <stm32f1xx_hal.h>
#include <stm32f1xx_hal_can.h>
#include <stm32f1xx_it.h>
#include "USER_CAN_DATA.h"
#include "USER_CAN.h"
#include "main.h"

//static pour le garder en memeoir le temps que le programme est en cours
static CAN_TxHeaderTypeDef myTxMessage; //buffer du message à envoyer 
extern CAN_HandleTypeDef hcan;  //appler le handler


// Envoie une donnée 8bits
//can : 32bit id + 8bit taille du message + 8 bit (ou 32, 64) données +
 void sendCanMessage(uint32_t __MSG_ID, uint8_t __MSG_LENGTH, uint8_t __Data)
{
	HAL_CAN_Start(&hcan);
	uint32_t txmail_bidon;
	//donner l'addresse du buffer au handler
	myTxMessage.DLC =__MSG_LENGTH;
	myTxMessage.ExtId =__MSG_ID<<16;
	myTxMessage.IDE = CAN_ID_EXT;
	myTxMessage.RTR = CAN_RTR_DATA;
	myTxMessage.StdId = __MSG_ID;
	// myTxMessage.TransmitGlobalTime = ;
	static uint8_t donnee[1];// __Data;
  donnee[0] = __Data;
	HAL_CAN_AddTxMessage(&hcan,&myTxMessage,donnee, &txmail_bidon);
}


