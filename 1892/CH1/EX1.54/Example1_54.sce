// Example 1.54

clear; clc; close;

format('v',6);
// Given data
P=6;//no. of poles
f=50;//in Hz
Ifl=60;//in Ampere
N=940;//speed in rpm
Tfl=150;//in N-m
Isc=300;//in Ampere
 
//Calculations
Ns=120*f/P;//in rpm
Sf=(Ns-N)/Ns;//Slip full load
//Formula : Tst/Tfl=(Isc/Ifl)^2*Sf
Tst=(Isc/Ifl)^2*Sf*Tfl;//in N-m
disp(Tst,"Starting Torque in N-m : ");
//For Start delta 
Tst=1/3*(Isc/Ifl)^2*Sf*Tfl;//in N-m
disp(Tst,"Starting Torque for star delta starter in N-m : ");
Isc=sqrt(3*Tst/Tfl/Sf)*Ifl;//in Ampere
disp(Isc,"Starting current for star delta starter in Ampere :  ");
