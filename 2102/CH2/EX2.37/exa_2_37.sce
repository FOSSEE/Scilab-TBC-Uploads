// Exa 2.37
clc;
clear;
close;
// Given data
format('v',11)
Io= 1;// in nA
Io= Io*10^-9;// in A
T= 27+273;//in K
V_T= T/11600;// in V
V_F= 0.3;// in V
n=1;
I_F= Io*[%e^(V_F/(n*V_T))-1];// in A
disp(I_F,"The forward current of diode in ampere is : ")
