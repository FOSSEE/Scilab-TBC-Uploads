clc;clear;
//Example 3.3

//given values
B=2.179*10^-16;//a constant in J
h=6.625*10^-34;//plank's constant in J-s

//calculation
E3=-B/3^2;
E2=-B/2^2;
f=(E3-E2)/h;
disp(f,'frequency(in Hz) of radiation')