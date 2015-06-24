// Exa 5.1
clc;
clear;
close;
format('v',6)
// Given data
R_C = 10;// in k ohm
R_C = R_C * 10^3;// in ohm
f = 2;// in kHz
f = f * 10^3;// in Hz
R = 8;// in  k ohm
R = R * 10^3;// in ohm
//Formula,  f = 1/(2*%pi*R*C*sqrt(6+((4*R_C)/R)));
C = 1/(2*%pi*R*f*sqrt(6+((4*R_C)/R)));// in F
C= C*10^6;// in µF
disp(C,"The value of capacitor in µF is");
h_fe= 23+29*R/R_C+4*R_C/R;
disp(h_fe,"The value of h_fe is : ")
