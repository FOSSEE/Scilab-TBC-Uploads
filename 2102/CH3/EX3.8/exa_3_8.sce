// Exa 3.8
clc;
clear;
close;
// Given data
I_by_Io= -0.9;
V_T=26;// in mV
V_T=V_T*10^-3;//in V
n=1;
// From Diode equation I= Io*[e^(e*V/(n*V_T))-1]
V= n*V_T*log(1+I_by_Io);// in volt
disp(V*10^3,"Voltage in mV is ")
