// Exa 2.8
format('v',6);clc;clear;close;
// Given data
del_a1 = 0.02;// limiting error in current
del_a2 = 0.5;// limiting error in resistor
A1 = 2;
A2 = 120;
e1 = del_a1/A1;
e2 = del_a2/A2;
n = 2;
// limiting error 
e_T = (n*e1)+e2;
e_T_Per= e_T*100;// limiting error in percentage
disp("The limiting error is ± "+string(e_T)+" or ± "+string(e_T_Per)+" %")
