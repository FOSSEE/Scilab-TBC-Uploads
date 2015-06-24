// Exa 3.17
clc;
clear;
close;
format('v',6)
// Given data
R = 150*10^3;// in ohm
R_L = 75;// in k ohm
R_L = R_L * 10^3;// in ohm
V_Z = 15;// in V
Vin = 50;// in V
R_Z = 0;
Rth = (R*R_L)/(R+R_L);// in ohm
Vth = Vin * ( R_L/(R_L+R) );// in V
I_Z = Vth/Rth;// in A
// The power dissipation in the zener diode 
P_Z = V_Z*I_Z;// in W
P_Z= P_Z*10^3;//in mW
disp(P_Z,"The power dissipation in the zener diode in mW is");

// Note: The calculation in the last line is wrong as 15*0.333 = 5 mW not 0.5mW, So the answer in the book is wrong. 
