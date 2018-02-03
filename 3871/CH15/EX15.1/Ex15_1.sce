//=====================================================================================
//Chapter 15 example 1
clc;clear all;

//variable declaration
Ip    = 25;         //power level ot the third-order intercept in dBm
M     = -85;         //minimum detectable signal in dBm

//calculations
Rd    = (2/3)*(Ip-M);

//result
mprintf("dynamic range = %3.0f dB",Rd);

