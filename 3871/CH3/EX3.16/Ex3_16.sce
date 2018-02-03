
//===========================================================================
//chapter 3 example 16

clc;clear all;

//variable declaration
E     =200;          //limiting voltage in V
R     = 1000;        //resistance in  Ω
eE    = 1;           //relative limiting error(dE/E) in %
eR    = 5;           //relative limting error(dR/R) in %

//calculations
P     = (E**2)/(R);      //normal power consumed in W
eP    = ((2*eE)+eR);            //relative limiting error(dP/P) in measurement of power in %
dP    = P*(eP/(100));                  //limitng error of power in watts

//result
mprintf("Normal power consumed = %3.2f W",P);
mprintf("\nrelative limitng error in power measurement= %3.2f percentage rangng +eP to -eP",eP);
mprintf("\nlimitng error of power = %3.2f percentage",dP);

