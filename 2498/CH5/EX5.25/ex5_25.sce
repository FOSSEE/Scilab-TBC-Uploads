// Exa 5.25
clc;
clear;
close;
format('v',6)
// Given data
A = 54.8;
A = 20 * log(A);
Beta = 1/50;// feedback factor
// gain with feedback
Af = A/(1+(A*Beta));
//Distortion with feedback, Df = D/(1+(A*Beta))
Df = 1;
D = 12;
Pd = (Df/D)*100;// percenatge change in distortion in %
disp(Pd,"The percentage reduction in harmonic distortion in  % is");
