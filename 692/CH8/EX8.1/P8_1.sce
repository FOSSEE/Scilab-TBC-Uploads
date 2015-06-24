//EXAMPLE 8.1
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS EXAMPLE
//Digital filter structure
clear;
clc;
syms W1 W2 W3 X Y a d B y E z;
//Equations obtained are as follows:
W1 = X - a*W3/z;
W2 = W1 - d*W2/z;
W3 = W2/z + E*W2;
Y  = B*W1 +y*W3/z;
//Solving the above equations:
Hz=(B + (B*d+y*E)/z + y/(z^2))/(1 + (d+a*E)/z + a/(z^2))
disp(Hz,'Hz = ');