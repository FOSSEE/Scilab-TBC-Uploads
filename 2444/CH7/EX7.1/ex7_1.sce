// Exa 7.1
clc;
clear;
close;
format('v',5)
// Given data
L = 29.3;// in µH
L = L * 10^-6;// in H
C = 450;// in pF
C = C * 10^-12;// in F
f_o = 1/( 2*%pi*(sqrt( L*C )) );// in Hz
f_o = f_o * 10^-6;// in MHz
disp(f_o,"The frequency of oscillation in MHz is");
