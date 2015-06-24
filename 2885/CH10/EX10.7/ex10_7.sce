//Calculate percentage change in the overall gain
clear;
clc;
//soltion
//given

A=1000;      //internal gain
N=40;//dB   //negative feedback
D=10^((-N)/-20);     //D=(1+AB)   desensitivity
dA_A=10;//percent    //dA/A
dAf_Af=dA_A/D;      //dAf/Af
printf("The percentage change in the overall gain= %.1f percent",dAf_Af);
