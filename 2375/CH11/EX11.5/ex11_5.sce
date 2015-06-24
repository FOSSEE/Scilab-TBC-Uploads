// Exa 11.5
clc;
clear;
close;
format('v',6)
// Given data
f = 5;// in kHz
f = f * 10^3;// in Hz
R1 = 14;// in k ohm
R2 = 75;// in k ohm
R_C = 18;// in k ohm
R = 6;// in k ohm
h_ie = 2;// in k ohm
k = R_C/R;// in k ohm
// f = 1/( 2*%pi*RC*sqrt(6+(4*k)) );
C = 1/( 2*%pi*R*10^3*f*sqrt(6+(4*k)) );// in F
C = C * 10^9;// in nF
disp(C,"The value of capacitor in nF is");
h_fe= 23+(29/k)+(4*k);
disp("The value of h_fe >= "+string(h_fe))
disp("Thus the transistor used mush have a minimum current gain of 45")

