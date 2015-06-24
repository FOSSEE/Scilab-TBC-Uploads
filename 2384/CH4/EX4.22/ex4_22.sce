// Exa 4.22
clc;
clear;
close;
format('v',6)
// Given data
P = 100;// in W
V = 120;// in V
f= 50;// in Hz
I = P/V;// in A
V = 200;// in V
V_R = 120;// in V
V_L = sqrt( (V^2) - (V_R^2) );// in V
// V_L = I*X_L;
X_L = V_L/I;// in ohm
// X_L = 2*%pi*f*L;
L = X_L/(2*%pi*f);// in H
disp(L,"The value of pure inductance in H is");

// Note: There is calculation error to find the value of V_L, So the answer in the book is wrong  and coding is correct.
