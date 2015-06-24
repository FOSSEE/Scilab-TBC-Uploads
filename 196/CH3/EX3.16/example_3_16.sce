//Chapter 3
//Example 3-16
//ProbOnServoAmplifier 
//Page 72
clear;clc;
//Given
Ei=2;//in volts
Vf=Ei;//feedback voltage
Vout=2*Vf;//output voltage
Vr=-Vout;//Reference voltage
Vcap=3*Ei;//capacitor voltage
printf("\n\n Value of feedback voltage =  %.4f V \n\n",Vf)
printf("\n\n Value of output voltage =  %.4f V \n\n",Vout)
printf("\n\n Value of reference voltage =  %.4f V \n\n",Vr)
printf("\n\n Value of capacitor voltage =  %.4f V \n\n",Vcap)