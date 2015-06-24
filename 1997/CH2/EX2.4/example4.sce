//Chapter-2 example 2.4
//=============================================================================
clc;
clear;
Pt=50000;//peal power in watts
PRF=1000;//pulse repetitive frequency in hz
PW=0.8;//pulse width in usec
//Calculations
D=PW*PRF*10^-6;//duty cycle 
Pav=Pt*D;//average power
//output
mprintf('Duty cycle is %g\n Average power is %g Watts',D,Pav);
