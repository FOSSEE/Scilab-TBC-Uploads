//Calculate the value of capacitor required
clear;
clc;
//soltion
//given

Rs1=20*10^3;//ohm
Rs2=30*10^3;//ohm
Rl1=40*10^3;//ohm
Rl2=80*10^3;//ohm
Rl3=80*10^3;//ohm
Rth=Rs1*Rs2/(Rs1+Rs2);          //Thevenin's equivalent resistance
Rl_=Rl2*Rl3/(Rl2+Rl3);
Rl=Rl1*Rl_/(Rl1+Rl_);    //Equivalent load
f=50;//Hz          //lowest frequency
R=Rth+Rl;
C=10/(2*%pi*f*R)
printf("The required value of coupling capacitor is %.0f uF",C*10^6);
