//Example 4.4: Resistance
clc;
clear;
close;
//given data :
emf=1.01892;// in V
R=1;// in M-ohm
V=1.01874;// in V
Ic=V/R;
Vd=emf-V;
Ri=Vd/(Ic*10^-6);
disp(Ri,"internal resistance,Ri(ohm) = ")
