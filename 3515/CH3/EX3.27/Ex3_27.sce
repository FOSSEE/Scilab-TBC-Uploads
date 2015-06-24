// Exa 3.27
format('v',7);
clc;
clear;
close;
// Given data 
V_B= 2;// in V
V_CC=5;// in V
V_BE= 0.7;// in V
R_E= 1*10^3;// in Ω
R_C= 1*10^3;// in Ω
V_E= V_B-V_BE;// in V
I_E= V_E/R_E;// in A
I_C= I_E;// in A
V_C= V_CC-I_C*R_C;//in V
disp("At V_B= +2 V")
disp(V_E,"The value of V_E in volts is : ")
disp(V_C,"The value of V_C in volts is : ")

// Part (b)
V_B= 0;//in V
V_E= 0;// in V
I_E=  0;// in A
V_C= 5;// in V
disp("At V_B= 0 V")
disp(V_E,"The value of V_E in volts is : ")
disp(V_C,"The value of V_C in volts is : ")
