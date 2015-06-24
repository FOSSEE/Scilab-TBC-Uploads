// Exa 4.2
clc;
clear;
close;
// Given data
V_CC= 12;// in volt
V_BE=0.7;//in volt
R_E1=3.3;// in kohm
V_EE= -12;// in volt
// Part (a) when V=0
V= 0;//in volt
V_E1= V-V_BE-V_EE;// in volt
I_E1= V_E1/R_E1;// in mA
disp(I_E1,"emitter current when input voltage is zero volt, in mA")

// Part(b)
// Part (i) when V=2 volt
V= 2;//in volt
V_P=0;
V_E1= V-V_BE;// in volt
V_E2= V_P-V_BE;// in volt
Vm= V_E1-V_E2;// in volt
disp(Vm,"Meter circuit voltage when input voltage is 2 volt, in volt")

// Part (ii) when V=1 volt
V= 1;//in volt
V_P=0;
V_E1= V-V_BE;// in volt
V_E2= V_P-V_BE;// in volt
Vm= V_E1-V_E2;// in volt
disp(Vm,"Meter circuit voltage when input voltage is 1 volt, in volt")
