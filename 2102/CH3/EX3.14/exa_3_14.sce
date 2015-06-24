// Exa 3.14
clc;
clear;
close;
// Given data
// Part (i)
I_D=2;// in mA
I_D=I_D*10^-3;// in amp
V_D= 0.5 ; // in volt
R_DC= V_D/I_D;// in ohm
disp(R_DC,"DC resistance levels for the diode in ohm")

// Part (ii)
I_D=20;// in mA
I_D=I_D*10^-3;// in amp
V_D= 0.8 ; // in volt
R_DC= V_D/I_D;// in ohm
disp(R_DC,"DC resistance levels for the diode in ohm")

// Part (iii)
I_D=-1;// in micro amp
I_D=I_D*10^-6;// in amp
V_D= -10 ; // in volt
R_DC= V_D/I_D;// in ohm
disp(R_DC*10^-6,"DC resistance levels for the diode in Mohm")
