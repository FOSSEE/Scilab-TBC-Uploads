clc();
clear;
// To calculate the hysterisis loss per cycle
A=100;   //area of hysteris loop in m^2
B=0.01;    //flux density in wb/m^2
H=40;    //magnetic field in amp/m
M=7650;    //atomic weight in kg/m^3
hl=A*B*H;
printf("the hysterisis loss per cycle is %f J/m^3",hl);
