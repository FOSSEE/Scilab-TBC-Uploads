//Find the output voltage
clear;
clc;
//soltion
//given

R1=20*10^3;//ohm
Rf=2000*10^3;//ohm
v1=4;//V
v2=3.8;//V
vo=v2*(1+Rf/R1)-(Rf/R1)*v1;
printf("The output voltage= %.1f V",vo);
