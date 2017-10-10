
//To calculate the Net Rate of Heat Loss

//Example 28.4

clear;

clc;

A=10*10^-4;//Surface Area of Blackbody in m^2

T=400;//Initial Temperature in Kelvin

T0=300;//Final Temperature in Kelvin

Sigma=5.67*10^-8;//Stefan Constant

delU=Sigma*A*(T^4-T0^4);//Net Rate of Heat Loss

printf("The net rate of loss of heat is=%2f W",delU);
