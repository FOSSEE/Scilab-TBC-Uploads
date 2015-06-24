// Exa 11.5
clc;
clear;
close;
format('v',6)
// Given data
K = 1/2;
P = 4;
f = 50;// in Hz
N = 1445;// in rpm
E1line = 415;// in V
Ns = (120*f)/P;// in rpm
N = 1455;// in rpm
s = (Ns-N)/Ns*100;// in %
f_r = s/100*f;// in Hz
disp(f_r,"The frequency of rotor in Hz is");
E1ph = E1line/sqrt(3);// in V
//E2ph/E1ph = K;
E2ph = E1ph*K;// in V
disp(E2ph,"The magnitude of induced emf in V is");
E2r = s/100*E2ph;// in V
disp(E2r,"The magnitude of induced emf in the running condition in V is");
