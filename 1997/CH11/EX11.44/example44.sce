//Chapter-11 example 44
//=============================================================================
clc;
clear;
//Given data

Vo    = 3*10^8;        // vel of EM wave m/s;
t     = 200*10^-6;      // time taken to rx echo

//Calculations

R     = (Vo*t)/2;      // Distance of the Target

//output

mprintf('Distance of the target is %3.2f Km',R/1000);

//==============================================================================
