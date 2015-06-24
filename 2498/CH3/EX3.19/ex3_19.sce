// Exa 3.19
clc;
clear;
close;
format('v',6)
// Given data
R = 12;// in k ohm
Vin = 6.3;// in V
V_Z = 4.8;// in V
I = (Vin-V_Z)/R*10^3;// in mA
I_Z = 5;// in mA
// Maximum value of load current,
I_Lmax = I - I_Z;// in mA
I_Z = 100;// in mA
// Minimum value of load current,
I_Lmin = I - I_Z;// in mA
disp("The range of possible load current is : "+string(I_Lmin)+" mA <= I_L <= "+string(I_Lmax)+" mA")
// Minimum value of load resistance,
R_Lmin= I_Lmin*10^-3*V_Z;// in ohm
// Maximum value of load resistance,
R_Lmax= I_Lmax*10^-3*V_Z;// in ohm
disp("The range of possible load resistance is : "+string(R_Lmin)+" ohm <= R_L <= "+string(R_Lmax)+" ohm")
// The power rating required for load resistance 
P_Zmax = I_Lmax*10^-3*V_Z;// in W
P_Zmax= P_Zmax*10^3;// in mW
disp(P_Zmax,"The power rating required for load resistance in mW is");

// Note: The calculated value of P_Zmax is wrong as 120*10^-3*4.8= 576 mW not 5.76 mW
