// Exa 6.22
clc;
clear;
close;
format('v',6)
// Given data
D = 5/100;// distortion without feedback
A = 1000;// open loop voltage gain
Beta = 0.01;// feedback ratio
Af = A/(1+(Beta*A));// unit less
disp(Af,"The Amplifier voltage gain is");
f1 = 50;// in Hz
fdas1 = f1/(1+(Beta*A));// in Hz
disp(fdas1,"The lower cutoff frequency with feedback in Hz is");
f2 = 200;// in kHz
f2 = f2 * 10^3;// in Hz
fdas2 = f2*(1+(Beta*A));// in Hz
fdas2 = fdas2 * 10^-6;// in MHz
disp(fdas2,"The upper cutoff frequency with feedback in MHz is");
Df = (D/(1+(Beta*A)))*100;// in %
disp(Df,"The distortion with feed back in % is");
