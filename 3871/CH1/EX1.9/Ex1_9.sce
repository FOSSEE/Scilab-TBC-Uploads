//===========================================================================
//chapter 1 example 9


clc;
clear all;

//variable declaration
s   = 4000;     //instrument sensitivity in kΩ
R   = 10;       //range of scale
R0  = 20;       //output resistance in kΩ
E0  = 7.5;       //open circuit voltage 

//calculations
RL     =s*R;       //instrument resistance in kΩ
RL1    = RL*10^-3;
EL     = E0/(1+(R0/(RL1)));   //measured value of voltage in V
p      = ((EL-E0)/(E0))*100;            //percentage error in %

//result
mprintf("measured value of voltage = %3.2f V",EL);
mprintf("\npercentage error = %3.2f V  percentage low",p);

