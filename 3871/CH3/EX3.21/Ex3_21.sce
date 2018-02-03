//===========================================================================
//chapter 3 example 21
clc;clear all;

//variable declaration
x1   = 49.7;      //voltage in V
x2   = 50.1;      //voltage in V
x3   = 50.2;      //voltage in V
x4   = 49.6;      //voltage in V
x5   = 49.7;      //voltage in V
n     =5;

//ccalculations
x   =(x1+x2+x3+x4+x5)/(5);    //arthimetic mean
d1   =x-x1;       //deviation
d2   =x-x2;       //deviation
d3   =x-x3;       //deviation
d4   =x-x4;       //deviation
d5   =x-x5;       //deviation
d     = (d1**2)+(d2**2)+(d3**2)+(d4**2)+(d5**2);
sigma  = sqrt(d/(n-1));       //standard devation 

//result
mprintf("arthimetic mean = %3.2f ",x);
mprintf("\nstandard deviation = %3.3f",sigma);



