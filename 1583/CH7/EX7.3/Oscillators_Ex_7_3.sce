clc
//Chapter 7:Conditions for Oscillation
//example 7.3
//given
rpi=1000
C1=200*10^-12
r=3.14//series resistance
C_1=C1/(1+(r/rpi))//capacitance

mprintf('the capacitor value is %f pF',round(C_1*1e12))
