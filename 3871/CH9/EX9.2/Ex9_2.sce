//===========================================================================
//chapter 9 example 2

clc;clear all;

//variable declaration
R   = 4;     //digital counter reading
G    = 0.001;    //gatting period in s
T     = 150;     //number of teeth on rotor 

//calculations
f   = R/(G);    //number of pulses per second 
N    = (f/T)*60;     //rotational speed in rpm

//result
mprintf("rotational speed = %3.2f rpm",N);
