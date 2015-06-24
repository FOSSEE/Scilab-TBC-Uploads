// Exa 4.12
clc;
clear;
close;
// Given data
Vout= 8;// in V
V_F= 1.8;// in V
Ip_max= 16;// in mA
Ip_max= Ip_max*10^-3;// in A
I_F= Ip_max;
Rs1= (Vout-V_F)/I_F;// in Ω
disp(Rs1,"If V_F= 1.8, then the value of Rs in Ω is :")
// If 
V_F= 2.0;// in V
Rs2= (Vout-V_F)/I_F;// in Ω
disp(Rs2,"If V_F= 2.0, then the value of Rs in Ω is :")
disp("In either case, the smallest standard value resistor that has a value greater than "+string(Rs1)+ "Ω and "+string(Rs2));
disp("ohm  resistor .is the 390 Ω")
