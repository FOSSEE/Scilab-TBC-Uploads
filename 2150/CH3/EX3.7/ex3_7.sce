// Exa 3.7
clc;
clear;
close;
// Given data
I_Z1 = 20;// in mA
I_Z1= I_Z1*10^-3;// in A
I_Z2 = 30;// in mA
I_Z2= I_Z2*10^-3;// in A
V_Z1 = 5.6;// in V
V_Z2 = 5.75;// in V
del_IZ = I_Z2-I_Z1;// in A
del_VZ = V_Z2-V_Z1;// in V
r_Z = del_VZ/del_IZ;// in ohm
disp(r_Z,"Resistance of zener diode in ohm is"); 
