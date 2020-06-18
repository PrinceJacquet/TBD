# The dashboard of the car : TIM-07

## Support Sheet for DashBoard : Compagnon de Code de TDB

### Function to code

* [x]  Led idle
		* [x] while(1) : blink Delay	
		* [ ] PWM 				

* [ ]  Led Status
		(hardware missing)
		
		* Break
		* Front Headlight
		* Back Headlight

* [ ]  CAN Bus Comminication

		* Rx
		* Tx
		
* [ ]  Servo Controller 

* [ ]  PWM Wiper

* [ ]  Buttons and interruptions
		
		* Wiper Speed 1
		* Wiper speed 2
		* Wiper off
		(cycle to choose wiper speed)
		* Fan On/Off
		* Front Headlight 
		* Back Headlight
## How to:

### PWM 

[link to course and tutorials!](https://visualgdb.com/tutorials/arm/stm32/pwm/)
[link to ST ressources on TIMERS](https://www.st.com/content/ccc/resource/training/technical/product_training/c4/1b/56/83/3a/a1/47/64/STM32L4_WDG_TIMERS_GPTIM.pdf/files/STM32L4_WDG_TIMERS_GPTIM.pdf/jcr:content/translations/en.STM32L4_WDG_TIMERS_GPTIM.pdf)
[link to OpenClassroom course](https://openclassrooms.com/fr/courses/4117396-developpez-en-c-pour-lembarque/4629911-configurez-un-modulateur-de-longueur-d-impulsion)
#### STM32 Timers HardWare
	* The hardwre is a bunch of separate block that can count from 0 to x
	 And trigger events when the timer reach 0, maximum value or a compae value. 
#### What are the steps 
	* First we have to start the timer (so it can count)
		* Pick the relevant timer and channel 
		* Configure the folowing parameters so that the timer count at the frequency you need :
		  T_(timer)=T_(horloge)×prescaler×(autoreload+1)
			* counting mode up or down
			* set the prescaler (PSC)
			* set the period (ARR)
			* set clock division if any (CKD)
			* set repetition if any 
	* Then we start the timer
	* Finaly we set the duty cycle
