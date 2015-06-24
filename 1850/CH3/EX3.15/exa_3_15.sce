// Exa 3.15
clc;
clear;
close;
// Given data
R_f=20;// in k ohm
R1=10;// in k ohm

// Part (i)  When switch S is off
A_off_non_inv= 1+R_f/R1;
A_off_inv= -R_f/R1;
A_off = A_off_non_inv + A_off_inv;
disp(A_off,"Gain of amplifier circuit when switch S is off");

// Part (ii)  When switch S is on
A_on= -R_f/R1;
disp(A_on,"Gain of amplifier circuit when switch S is on");


