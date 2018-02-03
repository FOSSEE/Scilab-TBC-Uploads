//=====================================================================================
//Chapter 16 example 9
clc;clear all;

//variable declaration 
f    = 2000;    //frequency in Hz
D    = 0.2;     //duty cycle

//calculations
T    = 1/(f);    //time period in ms
d   = D*T;           //pulse duration in ms

//result
mprintf("pulse duration = %3.2f ms",(d*10^3));

