
#include <misc.h>
class Output{
	public:
		//virtual uint8_t Set();
};

class GPIOc{
	protected:
		GPIO_InitTypeDef GPIO_InitStruct;
		GPIO_TypeDef *GPIO_Port;
	public:
	GPIOc(GPIO_TypeDef *Port, uint16_t Pin, GPIOMode_TypeDef Mode){
		
		if (Port == GPIOA) RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOA ,ENABLE);
		else if (Port == GPIOB) RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOB ,ENABLE);
		else if (Port == GPIOC) RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOC ,ENABLE);
		else;	
		GPIO_Port = Port;
		GPIO_InitStruct.GPIO_Pin = Pin;
		GPIO_InitStruct.GPIO_Speed = GPIO_Speed_2MHz;
		GPIO_InitStruct.GPIO_Mode = Mode;
		GPIO_Init(Port,&GPIO_InitStruct);
	}
};

class DigitalOut:GPIOc,Output{
	private:
		bool State;
	
	public:
		uint8_t Set(bool Val){
		
			GPIO_WriteBit(GPIO_Port, GPIO_InitStruct.GPIO_Pin, (BitAction)Val);
			State=Val;
			return 0;
		};
	
		uint8_t ToggleState(void){
			GPIO_WriteBit(GPIO_Port, GPIO_InitStruct.GPIO_Pin, (BitAction)!State);
			State= !State;
			
			return 0;
		};
	
		bool GetState(){
			return State;
		};
		
		DigitalOut(GPIO_TypeDef * Port, uint16_t Pin, GPIOMode_TypeDef Mode):GPIOc(Port,Pin,Mode){
			State=false;
	}
};
class PWMc:GPIOc,Output
{
	
		public:
		PWMc(uint16_t Freq, uint16_t DutyCycle,GPIO_TypeDef * Port, uint16_t Pin, GPIOMode_TypeDef Mode):GPIOc(Port,Pin,Mode)
		{
			TIM_OCInitTypeDef TIMOCInit;
			RCC_APB1PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
			if (Port == GPIOA)
			{
				RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
				switch (Pin)
				{
					case GPIO_Pin_0 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
						TIMOCInit = configureTimer(TIM2, Freq, DutyCycle);
						TIM_OC1Init(TIM2,&TIMOCInit);
						break;
					case GPIO_Pin_1 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);;
						TIMOCInit = configureTimer(TIM2, Freq, DutyCycle);
						TIM_OC2Init(TIM2,&TIMOCInit);
						break;
					case GPIO_Pin_2 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
						TIMOCInit = configureTimer(TIM2, Freq, DutyCycle);
						TIM_OC3Init(TIM2,&TIMOCInit);
						break;
					case GPIO_Pin_3 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
						TIMOCInit = configureTimer(TIM2, Freq, DutyCycle);
						TIM_OC4Init(TIM2,&TIMOCInit);
						break;
					case GPIO_Pin_6 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
						TIMOCInit = configureTimer(TIM3, Freq, DutyCycle);
						TIM_OC1Init(TIM3,&TIMOCInit);
						break;
					case GPIO_Pin_7 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
						TIMOCInit = configureTimer(TIM3, Freq, DutyCycle);
						TIM_OC2Init(TIM3,&TIMOCInit);
						break;
					case GPIO_Pin_8 :
						RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);
						TIMOCInit = configureTimer(TIM1, Freq, DutyCycle);
						TIM_OC1Init(TIM1,&TIMOCInit);
						break;
					case GPIO_Pin_9 :
						RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);
						TIMOCInit = configureTimer(TIM1, Freq, DutyCycle);
						TIM_OC2Init(TIM1,&TIMOCInit);
						break;
					case GPIO_Pin_10 :
						RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);
						TIMOCInit = configureTimer(TIM1, Freq, DutyCycle);
						TIM_OC3Init(TIM1,&TIMOCInit);
						break;
					case GPIO_Pin_11 :
						RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);
						TIMOCInit = configureTimer(TIM1, Freq, DutyCycle);
						TIM_OC4Init(TIM1,&TIMOCInit);
						break;
					default:
						int* test = (int*)(0x0);
						*test = 1;
						//Not a timer pin
				}
			}
			else if (Port == GPIOB)
			{
				RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
				switch (Pin)
				{
					case GPIO_Pin_0 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
						TIMOCInit = configureTimer(TIM3, Freq, DutyCycle);
						TIM_OC3Init(TIM3,&TIMOCInit);
						break;
					case GPIO_Pin_1 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
						TIMOCInit = configureTimer(TIM3, Freq, DutyCycle);
						TIM_OC4Init(TIM3,&TIMOCInit);
						break;
					case GPIO_Pin_6 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);
						TIMOCInit = configureTimer(TIM4, Freq, DutyCycle);
						TIM_OC1Init(TIM4,&TIMOCInit);
						break;
					case GPIO_Pin_7 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);
						TIMOCInit = configureTimer(TIM4, Freq, DutyCycle);
						TIM_OC2Init(TIM4,&TIMOCInit);
						break;
					case GPIO_Pin_8 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);
						TIMOCInit = configureTimer(TIM4, Freq, DutyCycle);
						TIM_OC3Init(TIM4,&TIMOCInit);
						break;
					case GPIO_Pin_9 :
						RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);
						TIMOCInit = configureTimer(TIM4, Freq, DutyCycle);
						TIM_OC4Init(TIM4,&TIMOCInit);
						break;
					default:
						int* test = (int*)(0x0);
						*test = 1;
						//Not a timer pin
				}	
			}
			else 
			{		
				// Do nothing. We hate errors.
			}
		}	
	
	private:
		TIM_OCInitTypeDef configureTimer(TIM_TypeDef* TIMx, uint16_t Freq, uint16_t DutyCycle)
		{
			TIM_OCInitTypeDef TIMOCInit;
			TIM_TypeDef TIMTypeVar;
			RCC_ClocksTypeDef ClocksFreq;
			RCC_GetClocksFreq(&ClocksFreq);
			
			uint32_t period = 0xFFFFFFFF;
			uint16_t prescaler = 0;
			uint32_t clockFreq = 0;
			
			if (TIMx==TIM1)
			{
				clockFreq = ClocksFreq.PCLK2_Frequency; 
			}
			else
			{
				clockFreq = ClocksFreq.PCLK1_Frequency; 
			}
			while(period>0x0000FFFF)
			{
				prescaler++ ;
				period = (clockFreq/prescaler)/Freq ;
			}
			
		}
		else 
		{

		
		}
	
  }	
	
	private:
		uint8_t configureTimer(TIM_TypeDef* TIMx, uint16_t Freq, uint16_t DutyCycle)
	{
		RCC_ClocksTypeDef ClocksFreq;
		RCC_GetClocksFreq(&ClocksFreq);
		
		uint32_t period = 0xFFFFFFFF;
		uint16_t prescaler = 0;
		uint32_t clockFreq = 0;
		
		if (TIMx==TIM1)
		{
			clockFreq = ClocksFreq.PCLK2_Frequency; 
		}
		else
		{
			clockFreq = ClocksFreq.PCLK1_Frequency; 
		}
		while(period>0xFFFF)
		{
			prescaler++;
			period = 
		}
		
		
		TIM_TimeBaseInitTypeDef TIM_TimeBaseStruct;
		TIM_TimeBaseStruct.TIM_CounterMode = TIM_CounterMode_Up;
		TIM_TimeBaseStruct.TIM_Prescaler = 1 - 1;
		TIM_TimeBaseStruct.TIM_Period =
		
		TIM_TimeBaseInit(TIMx,)
	}
	
};


class Input{
	protected:
		Input(void * pCallback);
		void * pCallback();

};

class DigitalIn:GPIOc,Input{
	private:
		uint8_t Logic;
		bool State;
		bool LastState;
		
	protected:
		void OnInterrupt(){
			
			bool GPIOread;
			GPIOread= (bool)GPIO_ReadInputDataBit(GPIO_Port, GPIO_InitStruct->GPIO_Pin);
			
			LastState = State;
			switch (Logic){
				case 0: // Logic normale High=True
					State = GPIOread;
					break;
				case 1: // Inverse logic
					State = !GPIOread;
					break;
				case 2: // Toggle on high
					if (GPIOread == true){ // Front montant
						State = !LastState;
					}
					break;
				default:
					State = GPIOread;
				}
			
			
			pCallback();
				
				
				//baisser les flags
		}
		
	public:
		DigitalIn(GPIO_TypeDef * Port, uint16_t Pin, GPIOMode_TypeDef Mode, void * pCallback, uint8_t LogicMode):GPIOc(Port,Pin,Mode),Input(pCallback){
		Logic = LogicMode;
			//init gpio interruption:
		EXTI_InitTypeDef EXTI_Struct;
		NVIC_InitTypeDef NVIC_Struct;

		EXTI_StructInit(&EXTI_Struct);
				switch (Pin) {
					case 0:
								EXTI_Struct.EXTI_Line = EXTI_Line0;
								NVIC_Struct.NVIC_IRQChannel=EXTI0_IRQn;

						break;
					case 1:
								EXTI_Struct.EXTI_Line = EXTI_Line1;
								NVIC_Struct.NVIC_IRQChannel=EXTI1_IRQn;

						break;
					case 2:
								EXTI_Struct.EXTI_Line = EXTI_Line2;
								NVIC_Struct.NVIC_IRQChannel=EXTI2_IRQn;

						break;
					case 3:
								EXTI_Struct.EXTI_Line = EXTI_Line3;
								NVIC_Struct.NVIC_IRQChannel=EXTI3_IRQn;

						break;
					case 4:
								EXTI_Struct.EXTI_Line = EXTI_Line4;
								NVIC_Struct.NVIC_IRQChannel=EXTI4_IRQn;
						break;
					case 5:
								EXTI_Struct.EXTI_Line = EXTI_Line5;
								NVIC_Struct.NVIC_IRQChannel=EXTI9_5_IRQn;
						break;
					case 6:
								EXTI_Struct.EXTI_Line = EXTI_Line6;
								NVIC_Struct.NVIC_IRQChannel=EXTI9_5_IRQn;
						break;
					case 7:
								EXTI_Struct.EXTI_Line = EXTI_Line7;
								NVIC_Struct.NVIC_IRQChannel=EXTI9_5_IRQn;
						break;
					case 8:
								EXTI_Struct.EXTI_Line = EXTI_Line8;
								NVIC_Struct.NVIC_IRQChannel=EXTI9_5_IRQn;
						break;
					case 9:
								EXTI_Struct.EXTI_Line = EXTI_Line9;
								NVIC_Struct.NVIC_IRQChannel=EXTI9_5_IRQn;
						break;
					case 10:
								EXTI_Struct.EXTI_Line = EXTI_Line10;
								NVIC_Struct.NVIC_IRQChannel=EXTI15_10_IRQn;
						break;
					case 11:
								EXTI_Struct.EXTI_Line = EXTI_Line11;
								NVIC_Struct.NVIC_IRQChannel=EXTI15_10_IRQn;
						break;
					case 12:
								EXTI_Struct.EXTI_Line = EXTI_Line12;
								NVIC_Struct.NVIC_IRQChannel=EXTI15_10_IRQn;
						break;
					case 13:
								EXTI_Struct.EXTI_Line = EXTI_Line13;
								NVIC_Struct.NVIC_IRQChannel=EXTI15_10_IRQn;
						break;
					case 14:
								EXTI_Struct.EXTI_Line = EXTI_Line14;
								NVIC_Struct.NVIC_IRQChannel=EXTI15_10_IRQn;
						break;
					case 15:
								EXTI_Struct.EXTI_Line = EXTI_Line15;
								NVIC_Struct.NVIC_IRQChannel=EXTI15_10_IRQn;
						break;
					default:
								__NOP;
				};
					

		EXTI_Struct.EXTI_Mode = EXTI_Mode_Interrupt;
		EXTI_Struct.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
		EXTI_Struct.EXTI_LineCmd = ENABLE;
		EXTI_Init(&EXTI_Struct);
				
				
		NVIC_Struct.NVIC_IRQChannelPreemptionPriority= 4; // Au pif.
		NVIC_Struct.NVIC_IRQChannelSubPriority= 4;
		NVIC_Struct.NVIC_IRQChannelCmd= ENABLE;
				
		NVIC_Init(&NVIC_Struct);
				
		
		
		EXTI0_IRQHandler = OnInterrupt;
		};
		
		bool getState(){
			
			return State;
			
		};
	
};





int main()
{	
	DigitalOut Led(GPIOA,GPIO_Pin_1,GPIO_Mode_Out_PP);
	PWMc myPWM1(1000, 0x8888, GPIOA, GPIO_Pin_0, GPIO_Mode_AF_PP);
	PWMc myPWM2(1000, 0x1111, GPIOA, GPIO_Pin_1, GPIO_Mode_AF_PP);
	PWMc myPWM3(1000, 0xBBBB, GPIOA, GPIO_Pin_2, GPIO_Mode_AF_PP);
	PWMc myPWM4(1000, 0x3CFE, GPIOA, GPIO_Pin_3, GPIO_Mode_AF_PP);
	PWMc myPWM5(10000, 0x8888, GPIOA, GPIO_Pin_6, GPIO_Mode_AF_PP);
	PWMc myPWM6(10000, 0x1111, GPIOA, GPIO_Pin_7, GPIO_Mode_AF_PP);
	PWMc myPWM7(500, 0xBBBB, GPIOA, GPIO_Pin_8, GPIO_Mode_AF_PP);
	PWMc myPWM8(500, 0x3CFE, GPIOA, GPIO_Pin_9, GPIO_Mode_AF_PP);
	PWMc myPWM9(500, 0x8888, GPIOA, GPIO_Pin_10, GPIO_Mode_AF_PP);
	PWMc myPWM10(500, 0x1111, GPIOA, GPIO_Pin_11, GPIO_Mode_AF_PP);
	PWMc myPWM11(10000, 0xBBBB, GPIOB, GPIO_Pin_0, GPIO_Mode_AF_PP);
	PWMc myPWM12(10000, 0x3CFE, GPIOB, GPIO_Pin_1, GPIO_Mode_AF_PP);
	PWMc myPWM13(18888, 0x8888, GPIOB, GPIO_Pin_6, GPIO_Mode_AF_PP);
	PWMc myPWM14(18888, 0xBBBB, GPIOB, GPIO_Pin_7, GPIO_Mode_AF_PP);
	PWMc myPWM15(18888, 0x1111, GPIOB, GPIO_Pin_8, GPIO_Mode_AF_PP);
	PWMc myPWM16(18888, 0x3CFE, GPIOB, GPIO_Pin_9, GPIO_Mode_AF_PP);

	Led.Set(true);
	
	while (1)
	{
		Led.ToggleState();	
	}
	
	return 0;
}

void EXTI0_IRQHandler()
{
	
}


