//Chapter 2
//Example 2-2
//ProbOnPWM 
//Page 34
clear;clc;
//Given
f=50;//in Hz
Vtemp=4; //input signal in volts
Ecm=10; //maximum peak voltage of sawtooth carrier wave in volts 

//Example 2-2(a)
T=1/f;
Th=(Vtemp*T)/Ecm;//High time in seconds
printf("\n\n High Time = %.4f s \n\n",Th)

//Example 2-2(b)
d=(Th/T)*100;//duty cycle in percentage
printf("\n\n Duty cycle = %.4f percent \n\n",d)
