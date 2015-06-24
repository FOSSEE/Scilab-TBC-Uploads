// Example 1.10

clear; clc; close;

format('v',8);
// Given data
f=50;//in Hz
P=8;//no. of poles
Tsh=190;//in N-m
fr=1.5;//in Hz
MechLoss=700;//in watts

//Calculations
S=fr/f;//Slip
Ns=120*f/P;//in rpm
N=Ns*(1-S);//in rpm
Pout=Tsh*2*%pi*N/60;//in watts
Pm=Pout+MechLoss;//in watts
//formula-:  P2:Pc:Pm=1:S:1-S
Pc=Pm*S/(1-S);//in watts
disp(Pc,"Rotor Copper loss in watts : ");
