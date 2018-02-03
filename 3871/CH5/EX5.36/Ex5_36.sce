//===========================================================================
//chapter 5 example 36

clc;
clear all;

//variable declaration
theta1      = 105;      //deflection in °
I1          = 20;       //current in A
I2          = 20;       //current in A
f1          = 50;       //frequency in Hz
f2          = 75;       //frequency in Hz


//calculations
theta       = (theta1)*((I2/I1)^2)*(f2/f1);

//result
mprintf("deflection of the instrument while measuring  20 A = %3.1f °",theta);
