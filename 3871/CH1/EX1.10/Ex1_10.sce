//===========================================================================
//chapter 1 example 10

clc;
clear all;

//variable declaration
E0    = 50;       //internal voltage source in V
R0    = 100;      //resitance in kΩ
r     = 99;       //accuracy in %

//calculations
//Em = E0/(1+(R0/RL))
//Em  = E0*(r in %)
//E0/(1+(R0/RL)) = E0*(r in %)
Em   = (E0*r)/(100);
x    =E0/(Em);
y    = x-1;
Rm   = R0/(y);        //resistance of voltage in kΩ

//result
mprintf("resistance of voltage  = %3.2f kΩ",Rm);

