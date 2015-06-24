// Example 1.41

clear; clc; close;

format('v',8);
// Given data
P=6;//no. of poles
f=50;//in Hz
Tsh=150;//in N-m
fr=1.5;//in Hz
Tlost=10;//in N-m

//Calculations
S=fr/f;//slip
Ns=120*f/P;//in rpm
N=Ns*(1-S);//in rpm
RotationalLoss=Tlost*2*%pi*N/60;//in watts
Pout=Tsh*2*%pi*N/60;//in watts
Pm=Pout+RotationalLoss;//in watts
//Formula : P2:Pc:Pm=1:S:1-S
Pc=Pm*S/(1-S);//in watts
disp(Pc,"Rotor Copper Loss(Watts) : ");
P2=Pc/S;//in watts
disp(P2 ,"Input to the rotor(Watts) : ");
StatorLoss=700;//in watts(assumed)
Pin=P2+StatorLoss;//in watts]
Eff=Pout/Pin*100;//in %
disp(Eff,"Efficiency in % : ");
