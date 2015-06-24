clc
clear

//input
c1=0.000005; //capacitance of first capacitor in farad 
c2=0.000003;//capacitance of second capacitor in farad
v=200; //potential difference to which capacitor is charged in volts

//calculations
q1=c1*v;// charge given to first capacitor
ct=c1+c2;// total capacitance in farad
pd=q1/ct;// final potential difference across combination in volts
Eo=(c1*v*v)/2;//original energy in system in joules
Ef=(pd*pd*(c1+c2))/2;//final energy in system in joules

//output
mprintf('the initial energy stored in the capacitor is %3.10f J and final energy stored in the combination is %3.10f J',Eo,Ef)
