// Example 1.29

clear; clc; close;
format('v',7);
// Given data
PA=12;//no. of poles
Ns=500;//in rpm
N=1440;//in rpm

//Calculations
//Formula : Ns=120*f/PA
f=Ns/120*PA;//in Hz
PM=4;//assumed for motor
Ns=120*f/PM;//in rpm(For motor)
S=(Ns-N)/Ns*100;//slip in %
disp(S,"Slip in % :");
