//===========================================================================
//chapter 3 example 1

clc;
clear all;

//variable declaration
Am      = 10.25;                //measured value in Ω
A       = 10.22;                //True value in Ω

//calculations
dA      = Am-A;                 //absolute error in Ω

//result
mprintf("abslotue error = %3.2f Ω",dA);

