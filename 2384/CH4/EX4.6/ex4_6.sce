// Exa 4.6
clc;
clear;
close;
format('v',6)
// Given data
P = 400;// in W
f = 50;// in Hz
V = 120;// in V
phi= acosd(0.8);// in °
// P =V*I*cos(phi);
I = P/(V*cosd(phi));// in A
Z= V/I;// in ohm
Z= Z*expm(%i*phi*%pi/180);// ohm
R= real(Z);// in ohm
XL= imag(Z);// in ohm
// Formula XL= 2*%pi*f*L
L= XL/(2*%pi*f);// in H
disp(R,"The value of R in Ω is : ")
disp(L,"The value of L in H is : ")


