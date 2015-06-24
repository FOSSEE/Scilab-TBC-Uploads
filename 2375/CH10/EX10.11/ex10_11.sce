// Exa 10.11
clc;
clear;
close;
format('e',8)
// Given data
Af = 10;
A = 50;
// Af =A/(1 + (A*Beta) );
Beta = ((A/Af)-1)/A*100;// in %
dAfByAf = 1/( 1+100/4 )*Af/100;
disp(dAfByAf,"The percentage of feedback is");
