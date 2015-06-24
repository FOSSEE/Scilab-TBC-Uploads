// Example 1.8

clear; clc; close;

format('v',6);
// Given data
P=24;//No. of poles
f=50;//in Hz
R2=0.016;//in ohm
X2=0.265;//in ohm
N=247;//in rpm

//Calculations
Ns=120*f/P;//in rpm
Sf=(Ns-N)/Ns;//full load slip
Sm=R2/X2;//max slip
Tfl_BY_Tm=2*Sm*Sf/(Sm^2+Sf^2);//unitless
disp(Tfl_BY_Tm,"Ratio of full load torque to max torque : ");
Tst_BY_Tm=2*Sm/(1+Sm^2);//unitless
disp(Tst_BY_Tm,"Ratio of starting torque to max torque : ");
