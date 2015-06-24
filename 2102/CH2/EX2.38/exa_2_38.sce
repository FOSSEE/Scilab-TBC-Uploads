// Exa 2.38
clc;
clear;
close;
// Given data
format('v',11)
I_F= 2;// in mA
I_F= I_F*10^-3;// in A
V_T= 25;// in mV
V_T=V_T*10^-3;// in V
n=1;
r_F= n*V_T/I_F;// in Ω
disp(r_F,"The dynamic resistance of a Ge p-n junction diode in Ω is : ")
