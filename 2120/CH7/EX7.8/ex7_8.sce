// Exa 7.8
clc;
clear;
close;
// Given data
T_A= 50+273;// in K
T_B= 13+273;// in K
P_A= 130;// in kPa
P_B= 100;// in kPa
Cp= 1.005;// in kJ/kg-K
pvByT= 0.287;// p in kPa, v in m^3/kg, T in K
del_S_system= Cp*log(T_B/T_A)-pvByT*log(P_B/P_A);// in kJ/kg-K
del_S_surrounding=0;
del_S_universe= del_S_system+del_S_surrounding;// in kJ/kg-K
disp(del_S_universe,"The change in entropy in kJ/kg-K is : ")
disp("But a negative change in entropy is not possible,");
disp("hence the flow of air must be from B to A")
