//=====================================================================================
//Chapter 14 example 4
clc;
clear al;

//variable declaration
N   = 45;       //count 
t   = 0.01;     //gate enable time in s

//calculations
f   = N/t;      //frequency in Hz

//result
mprintf("frequency  = %3.1f kHz",(f*10^-3));
