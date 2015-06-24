//Example 4.5: Resistance
clc;
clear;
close;
//given data :
l=65;// in cm
V=0.1;// in V
V1=5.5;// in V
R=20;// in ohm
E=V*l;
I=V1/R;
Ri=(E-V1)/I;
disp(Ri,"Internal resistance,Ri(ohm) = ")
