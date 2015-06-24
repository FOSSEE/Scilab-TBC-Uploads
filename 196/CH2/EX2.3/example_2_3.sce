//Chapter 2
//Example 2-3
//ProbOnHighTime 
//Page 34,35,figure 2-16(d)
clear;clc;
//Given
Vtemp=4;//in volts
Ecm=5;//maximum peak voltage of a sawtooth carrier wave
T=0.01;//in seconds
//calculate
Th=T*(1-(Vtemp/Ecm));//High Time
printf("\n\n High Time = %.4f s \n\n",Th)
