//Example 1_3
clc;
clear;close;

//Given data
RG=2000;//ohm
VCC=20;//V
VT=0.75;//V
Vthy=0.7;//V(Voltage across thyristor)
R=200;//ohm
IT=7*10^-3;//A
Ih=5*10^-3;//A


//Solution :
//part (a)
Vo=VCC;//V////thyristor not conducting
disp(Vo,"(a) When thyristor is in off state, Output voltage in V")
//part (b)
Vs=VT+IT*RG;//V
disp(Vs,"(b) Voltage necessary to turn on the thyristor in V")
//part (c)
VR1=Ih*R;//V
disp("(c) Current through thyristor should be less than holding current. Voltage should be reduced to less than "+string(VR1)+" V")
//part (d)
VR2=VR1+Vthy;//V
disp("(d) VCC should be reduced to less than "+string(VR2)+" V")
