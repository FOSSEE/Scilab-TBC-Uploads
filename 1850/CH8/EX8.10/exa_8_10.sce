// Exa 8.10
clc;
clear;
close;
//given data
V_REF= -5;// in V
V_B= 0;// in volt
V_A= -5;// in volt
V_C=V_A;
V_D=V_C;
Vout= -1*(V_A+V_B/2+V_C/4+V_D/8);// in volt
disp(Vout,"Output voltage in volt")
