// Exa 5.3

clc;
clear all;

// Given data
// 3 1/2 digit display

V1=1; // Volts
V2=10;//Volts

// Solution
disp("Number of full digits is 3.");
n=3;//Full digits
Reso=1/10^n;
printf(' Resolution = %.3f . Hence, meter cannot distinguish two values if their difference is less than %.3f \n ',Reso,Reso);
printf('For full scale reading of 1V, the resolution is %.3f V \n ',V1*Reso);
printf('For full scale reading of 10V, the resolution is %.2f V \n ',V2*Reso);
