// Exa 3.2
clc;
clear;
close;
//given data
R1=2;// in k ohm
R_f_min=0;
R_f_max=100; // in k ohm
A_f_max = 1+R_f_max/R1;
disp(A_f_max,"Maximum closed loop")
A_f_min = 1+R_f_min/R1;
disp(A_f_min,"Minimum closed loop")

