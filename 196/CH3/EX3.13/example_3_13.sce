//Chapter 3
//Example 3-13
//ProbOnOpampParameters 
//Page 58,Figure 3-8
clear;clc;
//Given
Ei=4;//in volts
Rl=10*10^3;//in ohm
I=0;//in ampere
Vout=Ei;//output voltage
Il=Vout/Rl;//load current
I0=I+Il;//output current 
printf("\n\n Value of o/p voltage =  %.4f V \n\n",Vout)
printf("\n\n Value of load current =  %.4f A \n\n",Il)
printf("\n\n Value of output current =  %.4f A \n\n",I0)