//clc();
clear;
//To determine the hysteresis loss per cycle
A=100;         //area of hysteresis loop in m^2
B=0.01;        //flux density in Wb/m^2
H=40;          //magnetic field in amp/m
M=7650;        //atomic weight in kg/m^3
L=A*B*H;
printf("hysteresis loss per cycle is %f J/m^3",L);
