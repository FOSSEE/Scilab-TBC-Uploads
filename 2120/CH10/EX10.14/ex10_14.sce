// Exa 10.14
clc;
clear;
close;
// Given data
h_sen = 191.9;// in kJ/kg
L = 2392;// in kJ/kg
x = 0.95;
t_o = 35;// in °C
t_i = 20;// in °C
C = 4.18;
H_totalwet =  h_sen + (x * L);//in kJ/kg
// m_steam * (H_totalwet - h_sen) = m_water * C * (t_o - t_i)
msBYmw = (H_totalwet - h_sen) / ( C * (t_o - t_i));//
disp(msBYmw,"The Ratio of mass flow rate of cooling water to condensing steam is : ");

