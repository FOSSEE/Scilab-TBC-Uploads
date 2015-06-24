//Exa 6.4
clc;
clear;
close;
//Given data :
//d=10*lambda
disp("d=10*lambda");
disp("Power Gain : G=6*(d/lambda)^2");
disp("Putting value of d, we get G=6*10^2")
G=6*10^2;//unitless
disp(G,"Power gain : ");
G_dB=10*log10(G);//in dB
disp(G_dB,"Power Gain in dB : ");