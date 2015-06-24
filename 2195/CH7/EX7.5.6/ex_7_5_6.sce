//Example 7.5.6: resistance
clc;
clear;
close;
//given data :
A=100.24;// in ohm
B=200;// in ohm
a=100.31;// in ohm
b=200;// in ohm
S=100.03;// in micro-ohm
r=700;// in micro-ohm
X=((A/b)*S)+(((r*b)/(r+a+b))*((A/B)-(a/b)));
disp(X,"the unknown resistance,X(micro-ohm) = ")
