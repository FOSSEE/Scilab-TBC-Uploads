//Chapter 3
//Example 3-12
//ProbOnOutputvoltage 
//Page 57
clear;clc;
//Given
R1=100000;R2=100000;R3=100000;R=100000//in ohm
Rf=33*10^3;//in ohm
E1=5;E2=5;E3=-1;//in volts
n=3;//number of inputs
Vout=-(E1+E2+E3)/n;//output voltage
printf("\n\n Value of output voltage =  %.4f V \n\n",Vout)