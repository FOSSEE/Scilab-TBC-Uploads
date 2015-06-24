 // Exa 2.4.2  (again 2.4)
clc;
clear;
close;
// Given data
V_in  = 10;// in V
R_L = 2000;// in ohm
R1 = 100;// in ohm
V_R= 0.7;// in V
V_o = V_in * ( (R_L)/(R1+R_L) );// in V
disp(V_o,"The peak magnitude of the positive output voltage in V is");
Vo=-V_R;// in V
disp(Vo,"The peak magnitude of the negative output voltage in V is : ")
