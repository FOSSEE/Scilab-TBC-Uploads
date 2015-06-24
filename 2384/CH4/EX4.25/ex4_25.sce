// Exa 4.25
clc;
clear;
close;
format('v',7)
// Given data
R = 8;// in ohm
L = 0.12;// in H
C = 140;// in µF
C = C * 10^-6;// in F
V = 230;// in V
f = 50;// in Hz
XL = 2*%pi*f*L;// in ohm
XC= 1/(2*%pi*f*C);// in ohm
Z= R+%i*XL-%i*XC;// in ohm
I= V/Z;// in A
phi= atand(imag(I),real(I));// in °
PowerFactor= cosd(phi);
VC= abs(I)*XC;// in V
disp("Impedence of the entire circuit : ")
disp("Magnitude is : "+string(abs(Z))+" Ω");
disp("Angle is : "+string(atand(imag(Z),real(Z)))+" °")
disp("Current flowing through the condensor : ")
disp("Magnitude is : "+string(abs(I))+" Ω");
disp("Angle is : "+string(atand(imag(I),real(I)))+" °")
disp("Power factor of the circuit is : "+string(cosd(phi))+" lag")
disp(VC,"The voltage across the condensor in V is : ")


