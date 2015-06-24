// Exa 3.11
clc;
clear;
close;
// Given data
Av=-30;
disp("Voltage gain,  Vo/Vi= -R_f/R1 = -30");
disp("Or R_f= 30*R1");
disp("Obviously R_f will be larger resistance , being 30 times of R1 and largest resistance value is limited to 1 M ohm, So")
R_f=1;// in M ohm
disp(R_f,"Value of R_f in M ohm :");
R_f= R_f*10^6;// in ohm
R1=R_f/30;// in ohm
disp(R1*10^-3,"Value of R1 in k ohm :");
