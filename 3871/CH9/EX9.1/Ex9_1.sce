//===========================================================================
//chapter 9 example 1

clc;clear all;

//variable declaration
N    = 1500;   //speed of shaft in rm
T    =120;      //number of teeth on rotator 

//calculatins
f    = (N/60)*T;    //frequency of output pulses in pulses per second

//result
mprintf("frequency of output pulses in pulses = %3.2f pulses per second",f);

