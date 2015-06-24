// Exa 9.4
clc;
clear;
close;
// Given data
H_w = 670.4;// in kJ/kg
L = 2085;// kJ per kg
T_sat = 158.8;// in degree c
m = 4;// in kg
x = 0.5;
h_sen = 670.4;// in kJ/kg
H_totalwet = m * ( h_sen + (x *L));// in kJ
x1 = 0.95
H_totalwet1 = m *( h_sen + (x1 *L));// in kJ
Q1 =  H_totalwet1 - H_totalwet;// in kJ
disp(Q1,"Part (i) The quantity of heat in case first in kJ is : ");
// Part (b)
x2 = 1;
H_totaldry = m *( h_sen + (x2 *L));// in kJ
Q2 = H_totaldry - H_totalwet;// in kJ
disp(Q2,"Part (ii) The quantity of heat in case second in kJ is : ");
// Part (c)
H_totalsup = 3062.3;// in kJ per kg
H_totalsup = m * H_totalsup;// in kJ
Q3 = H_totalsup - H_totalwet;// in kJ
disp(Q3,"Part (iii) The quantity of heat in case third in kJ is : ");
// Part (d)
H_totalsup = 2950.4;// in kj per kg
H_totalsup = m * H_totalsup;// in kj
Q4 = H_totalsup - H_totalwet;// in kj
disp(Q4,"Part (iv) The quantity of heat in case forth in kJ is : ");
