// Exa 5.2
clc;
clear;
close;
// Given data
V_REF= -5;// in volt
V_A= -5;// in volt
V_C=V_A;// in volt
V_D=V_C;// in volt
V_B= 0;
Vout= -1*(V_A+V_B/2+V_C/4+V_D/8);
disp(Vout,"Output voltage in volt");
