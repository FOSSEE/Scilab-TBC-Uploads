//===========================================================================
//chapter 5 example 22

clc;
clear all;

//variable declaration
 Irms           = 32;		//measured reading reading in A
 Ir         = 30;           //rectifier ammeter reading in A
Ks          = 1.11;		//form factor for sinusoidal wave

//calculations
Iav     = Ir/(Ks);		//average value of current under measurement in A
e          = ((Irms)/(Iav));		//percentage errror in %

//result

mprintf("form factor = %3.3f ",e);

