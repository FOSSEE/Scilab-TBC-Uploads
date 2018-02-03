//===========================================================================
//chapter 10 example 24

clc;
clear all;

//variable declaration
V = 3;  //battery voltage in volts
Rm = 2;  //meter resistance in  Ω
Ifm = 10;  //full scale deflection meter current in mA
Rh = 0.5;  //half scale deflection resistance in  Ω

//calculations
Im = 0.5*Ifm;             //half-scale deflection of the movement
Vm = Im*Rm;                //voltage across movement in mV
Ix = (Vm*10^-3)/Rh;           //current through resistor in A
Ix1  = Ix*10^3;               //urrent through resistor in mA
IB = Im+Ix1;               //total battery current in mA
V1 = V-(Vm*10^-3);            //voltage drop across current lo V
Rse = V1/(IB*10^-3);           //current limiting resistor in Ω

//result
mprintf("current limiting resistor = %3.1f Ω",Rse);
