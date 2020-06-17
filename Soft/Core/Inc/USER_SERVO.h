


 #ifndef __USER_SERVO_H
 #define __USER_SERVO_H
 #endif
//attention aux inclusions recursives -------------------------------------*/

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

//definir certaines variables liee au servo moteur
#define Tmin 1.0 //temps en ms min pour commander le servo (soit 5% de 20ms  == 0°)
#define Tmax 2.0 //temps en ms max pour commander le servo (soit 10% de 20ms  == 180°)

//les foncttions publiques

void Servo_Power(uint8_t ON_OFF); //Allimenté ou non.
 /*
 Choisir la vitesse 
	mode = 0 => MàZ
	mode = 1 => vitesse faible 
	mode = 2 => Vitesse max  */
void Servo_Set_Speed(uint8_t mode);

