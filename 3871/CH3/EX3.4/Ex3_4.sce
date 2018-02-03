//===========================================================================
//chapter 3 example 4
clc;
clear all;

//variable declaration
ep     =  5;            //percentage error 
Am     = 20;            //measuredd value in H

//calculations
er     = ep/(100);     //relative error 
//A = Am+dA
//dA  = er*Am
A     = Am*(1+er);            //limiting value of inductance in H
A1    = Am*(1-er);            //limiting value of inductance in H

//result
mprintf("limits of inductance =%3.2f H",A);
mprintf("\n and  = %3.2f H",A1);

