//Caption:Calculate the value of VSWR
//Exa:6.12
clc;
clear;
close;
D=3.5;//distance of seperation(in cm)
w_l=2*D;//wavelength
d2_d1=2.5;//d2-d1(in m)
S=w_l/(%pi*d2_d1*10^-1);
disp(S,'VSWR =');