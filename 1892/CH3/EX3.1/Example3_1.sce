// Example 3.1

clear; clc; close;

format('v',8);
// Given data
Lm=30;//in mH
Iph=3;//in Ampere
Rm=15;//in Ohm

//Calculations
tau_ed=Lm/Rm;//in ms
tdash=1/2*tau_ed;//in ms
disp(tdash,"(i) Time taken by the phase current to decay to zero in ms : ");
Energy=1/4*Lm*Iph^2;//in mW
disp(Energy,"(ii) Energy returned to supply in mW : ");
