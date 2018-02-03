//=====================================================================================
//Chapter 15 example 2

clc;clear all;

//variable decalaration
N     = 20;       //noise figure indB
B     = 1000;     //bandwidth in Hz

//calculations
x     = B/(10^6);
//log(10**-3)= (-3)*log(1) = -3
M     = (-114)+((10*(-3))*(1))+N;    //log(1) = 1

//result
mprintf("minimum detectable signal = %3.2f dBm",M);

