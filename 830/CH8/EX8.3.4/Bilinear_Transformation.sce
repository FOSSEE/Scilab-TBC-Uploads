//Graphical//
//Example 8.3.4
//Bilinear Transformation
//To convert analog filter into digital filter
clear;
clc;
close;
s = poly(0,'s');
H = (s+0.1)/((s+0.1)^2+16);
Omega_Analog = 4;
Omega_Digital = %pi/2;
//Finding Sampling Period
T = (2/Omega_Analog)*(tan(Omega_Digital/2))
z = poly(0,'z');
Hz = horner(H,(2/T)*((z-1)/(z+1)))
