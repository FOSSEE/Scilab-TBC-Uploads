//===========================================================================
//chapter 3 example 7


clc;clear all;

//variable declaration
er     = 0.01;              // limiting error 
P      = 1000;              //power in watts
P1     = 100;               // true power in watts

//calculations
dP     = er*P;              //magnitude of instrument error of the instrument watts
eP     = (dP/(P1))*100;     //percentage limiting error at 100 W power in %

//result
mprintf("percentage limiting error at 100 W power = %3.2f percentage',eP);;

