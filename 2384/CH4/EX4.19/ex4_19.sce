// Exa 4.19
clc;
clear;
close;
format('v',6)
// Given data
R1 = 50;// in ohm
L = 318;// in mH
L = L * 10^-3;// in H
R2 = 75;// in ohm
C = 159;// in µF
C =C * 10^-6;// in F
V = 230;// in V
f = 50;// in Hz
XL= 2*%pi*f*L;// in ohm
Z1= R1+XL*%i;// in ohm
I1= V/Z1;// in A
XC= 1/(2*%pi*f*C);// in ohm
Z2= R2-%i*XC;// in ohm
I2= V/Z2;// in A
I= I1+I2;// in A
phi= atand(imag(I),real(I));// in °
disp("Supply current : ")
disp("Magnitude is : "+string(abs(I))+" A")
disp("Angle : "+string(phi)+" °")
disp("Power factor is : "+string(cosd(phi))+" lag")
