// Exa 2.39
clc;
clear;
close;
// Given data
T=300;// in K
n=1;
V_T= 26;// in mV
V_T=V_T*10^-3;// in V
V_F= 200;// in mV
V_F=V_F*10^-3;// in V
Io= 1;// in µA
Io= Io*10^-6;// in A
r_F= n*V_T/(Io*%e^(V_F/(n*V_T)));// in Ω
disp(r_F,"The ac resistance of a semiconductor diode in Ω")
