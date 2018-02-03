//===========================================================================
//chapter 6 example 10

clc;clear all;

//variable declaration
alpha0   = 0.0043;        
t1       = 25;       //temperature in °C
t2       = 45;       //temperature in °C
e        = 1.1;      //percentage error in %

//calculations
R1    = ((1+(alpha0*t2))/(1+(alpha0*t2)));
//r1   = R1*r
//I2   = V/r1+R
//e    = (I1-I2)/100
//I2    = 0.989I1
//I2     = V/1.0776r+R
//I1     = V/R+r
//V/(1.0776r+R)  = 0.989V/R+r
//R/r     = 5.96
x        = 5.96;

//result
mprintf("R/r= %3.2f",x);
