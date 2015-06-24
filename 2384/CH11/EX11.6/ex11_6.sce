// Exa 11.6
clc;
clear;
close;
format('v',6)
// Given data
P = 4;
S =4/100;
f = 50;// in Hz
Ns = (120*f/P);// in rpm
disp(Ns,"The value of Ns in rpm is");
// The rotor speed when slip is 4 %
N = Ns*(1-S);// in rpm
disp(N,"The rotor speed when slip is 4% in rpm is");
// The rotor speed when rotor runs at 600 rpm
N1 = 600;// in rpm
s1 = ((Ns-N1)/Ns)*100;// in %
f_r = (s1/100)*f;// in Hz
disp(f_r,"The rotor frequency when rotor runs at 600 rpm in Hz is");
