// Exa 4.7
clc;
clear;
close;
// Given data 
V_CM= 0;
V_BE= -0.7;// in volt
v_E= V_CM-V_BE;// in volt
disp(v_E,"Value of v_E in volts is : ")

I_E= (5-0.7)/10^3;// in A
v_B1= 0.5;// in V
v_B2= 0;// in V
// Due to Q1 is off; therefore
v_C1= -5;// in V
v_C2= I_E*10^3-5;// in V
disp(v_C1,"Value of v_C1 in volts is : ")
disp(v_C2,"Value of v_C2 in volts is : ")
