// Exa 4.7
clc;
clear;
close;
format('v',6)
// Given data
R = 17.32;// in ohm
L = 31.8;// in mH
L = L * 10^-3;// in H
V = 200;// in V
f = 50;// in Hz
X_L = 2*%pi*f*L;// in ohm
Z = sqrt( (R^2) + (X_L^2) );// in ohm
I = V/Z;// in A
phi =acosd( R/Z);// in °
ActiveCom= I*cosd(phi);// in A
ReactiveCom= I*sind(phi);// in A
disp(ActiveCom,"The active component of current in A is : ")
disp(ReactiveCom,"The reactive component of current in A is : ")
P= V*I*cosd(phi);// in W
disp(P,"The active power in W is : ")
Q= V*I*sind(phi);// in VAR
disp(Q,"The reactive power in VAR is : ")

// Note: There is calculation error to evaluate the value of P, so the answer in the book is wrong.
