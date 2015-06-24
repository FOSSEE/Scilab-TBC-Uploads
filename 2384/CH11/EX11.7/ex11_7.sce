// Exa 11.7
clc;
clear;
close;
format('v',6)
// Given data
V_L = 230;// in V
f = 50;// in Hz
N = 950;// in rpm
E2 = 100;// in V
Ns =1000;// in rpm
// Ns = 120*f/P;
P = (120*f)/Ns;
disp(P,"The Number of ploes is");
s = ((Ns-N)/Ns)*100;// %s in %
disp(s,"The percentage of full load slip in % is");
// The rotor induced voltage at full load
E2r = (s/100)*E2;// in V
disp(E2r,"The rotor induced voltage in V is");
// The rotor frequency at full load
f_r = (s/100)*f;// in Hz
disp(f_r,"The frequency at full load in Hz is");
