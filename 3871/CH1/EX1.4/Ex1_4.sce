//===========================================================================
//chapter 1 example 4

clc;
clear all;

//variable declaration
T1    = 200;            //Tempperature in  °C
T2    = 225;            //Tempperature in °C
R1    = 305;           //Resistance in Ω
R2    = 310;            //Resistance in Ω

//calculations
S   = (R2-R1)/(T2-T1);    //dr/dt in per  °C

//result
mprintf("measurement sensitivity S = %3.2f  Ω per °C",S);


//==========================================================================

