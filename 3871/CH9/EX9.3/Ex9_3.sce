//===========================================================================
//chapter 9 example 3

clc;clear all;

//variable declaration
H    = 120;    //number of holes on the rotating disc
f    = 5400;   //frequency of output pulses in per second

//calculations
N    = (f/(H))*60;     //rotational speed in rpm

//result
mprintf("rotational speed = %3.2f rpm",N);
