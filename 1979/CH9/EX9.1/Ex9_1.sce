//chapter-9 page 411 example 9.1
//==============================================================================
clc;
clear;

L=2*10^(-6);//Drift Length of a IMPATT diode in m
Vd=(10^7)*(10^(-2));//Drift Velocity for Siin m/sec

//CALCULATION
f=(Vd/(2*L))/10^9;//Operating Frequency in GHz

//OUTPUT
mprintf('\nOperating Frequency of the IMPATT diode is f=%2.0f GHz',f);

//=========================END OF PROGRAM===============================
