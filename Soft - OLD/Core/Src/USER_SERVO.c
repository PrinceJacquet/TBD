//Prince Jacquet
//Servo Moteur Control

#include <stm32f1xx_hal.h>
#include "main.h"  // besoins des ports et des pins
#include "tim.h"   // besoins de configuer les timers pour la pwm
#include "USER_SERVO.h" // appelé les varible qu'on a definie




// variables non constantes
extern TIM_HandleTypeDef htim2; //aller chercher le handle du timer a manipulé

float Talpha = 0; //Periode de temps ON en ms sur
float Ttotal ; // = (float)htim2.Init.Period; //(2000 = 20ms) Periode du timer utilisé [TIM2 channel 1, apres prescaler et ] 
float tmin;
float tmax;

// besoins de commender à l'ouverture ou a la fermeture de la puissance 

void Servo_Power(uint8_t ON_OFF){
	if (ON_OFF ==1){ 
		HAL_GPIO_WritePin(SERVO_CMD_LPWR_GPIO_Port,SERVO_CMD_LPWR_Pin, GPIO_PIN_SET);
    HAL_TIM_PWM_Start(&htim2,TIM_CHANNEL_1);	
	}
	else{
		HAL_GPIO_WritePin(SERVO_CMD_LPWR_GPIO_Port,SERVO_CMD_LPWR_Pin, GPIO_PIN_RESET);
	  HAL_TIM_PWM_Stop(&htim2,TIM_CHANNEL_1);
	}
}
//Remises à zero

void Servo_RAZ(void){
	Ttotal = (float)htim2.Init.Period;
	tmin = 5/100*Ttotal ;//5% de Ttotal
	
	htim2.Instance->CCR1 = tmin;
}
//besoins de definir les vittese du servo moteur

void Servo_Set_Speed(uint8_t mode){
	Ttotal = (float)htim2.Init.Period;
	tmin = 5/100*Ttotal ;//5% de Ttotal
	tmax = 10/100*Ttotal; //10% de Ttotal
	float Ton =0;
	if (mode ==0) {
		Servo_Power(1);
		Servo_RAZ();
		HAL_Delay(700);
	}
	else if (mode ==1) {
		while(HAL_GPIO_ReadPin(WIPER_SPEED_1_GPIO_Port,WIPER_SPEED_1_Pin)==0){
			Servo_Power(1);
			Servo_RAZ();
			HAL_Delay(700);
			while(Ton+tmin<= tmax){
				htim2.Instance->CCR1 = tmin+Ton;
				HAL_Delay(1000/6);
				Ton++;
			}
			Servo_RAZ();
			HAL_Delay(500);
		}
	}
	else if (mode ==2) {
		while(HAL_GPIO_ReadPin(WIPER_SPEED_2_GPIO_Port,WIPER_SPEED_2_Pin)==0){
			Servo_Power(1);
			Servo_RAZ();
			HAL_Delay(1000);
			while(Ton+tmin<= tmax){
				htim2.Instance->CCR1 = tmin+Ton;
				HAL_Delay(400);
				Ton=Ton+15;
			}
			Servo_RAZ();
			HAL_Delay(500);
		}
	}
	else {Servo_Power(0);}
}



