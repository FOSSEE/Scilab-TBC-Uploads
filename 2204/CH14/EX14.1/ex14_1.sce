// Exa 14.1
clc;
clear;
close;
// Given data
R_T = 10;// in k ohm
R_T = R_T * 10^3;// in ohm
C_T = 0.005;// in µF
C_T = C_T * 10^-6;// in F
C=10*10^-6;// in F
f_out = 0.25/(R_T*C_T);// in Hz
disp("Free Running frequency is : "+string(f_out*10^-3)+" kHz");
// Part (ii)
V=20;// in V
f_L= 8*f_out/V;// in Hz
disp("Lock range in kHz is : ±"+string(f_L*10^-3)+" kHz")
// Part (iii)
f_C= sqrt(f_L/(2*%pi*3.6*10^3*C));// in Hz
disp("Capture range is :  ±"+string(f_C)+" Hz")
