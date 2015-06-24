// Exa 8.16
clc;
clear;
close;
// Given data
C_1N= 36;// in pF
C_2= 150;// in pF
R_1N= 1;// in M ohm
R_1= 10;// in M ohm
R_source= 500;// in ohm
// R_1/(omega*(C_2+C_1N)) = R_1N/(omega*C_1)
C_1= R_1N*(C_2+C_1N)/R_1;// in pF
C_T= 1/(1/C_1+1/(C_2+C_1N));// in pF
C_T= C_T*10^-12;// in F
f= 1/(2*%pi*C_T*R_source);
disp(f*10^-6,"Signal Frequency in MHz")
