
//To calculate the rms speed of oxygen molecules

//Example 24.4

clear;

clc;

R=8.3;//universal gas constant in J/mol-K

T=300;//temperature in Kelvin

M0=0.032;//molecular weight in kg/mol

V=sqrt(3*R*T/M0);//formula for finding the rms speed

printf("the rms speed of oxygen molecule=%d m/s",V);
