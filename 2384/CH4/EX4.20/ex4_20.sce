// Exa 4.20
clc;
clear;
close;
format('v',6)
// Given data
V=250;// in V
Z1= 70.7+70.7*%i;// in ohm
Z2= 120+160*%i;// in ohm
Z3= 120+90*%i;// in ohm
Y1= 1/Z1;// in S
Y2= 1/Z2;// in S
Y3= 1/Z3;// in S
Y_T= Y1+Y2+Y3;// in S
phi= atand(imag(Y_T),real(Y_T));// in °
disp("Total admittance of the circuit : ")
disp("Magnitude is : "+string(abs(Y_T))+" mho")
disp("Angle is : "+string(phi)+" °")
I= V*Y_T;// in A
disp("The supply current : ")
disp("Magnitude is : "+string(abs(I))+" A")
disp("Angle is : "+string(phi)+" °")
disp("Power factor is : "+string(cosd(phi))+" ° lag")
