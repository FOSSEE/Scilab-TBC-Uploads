// Exa 11.12
clc;
clear;
close;
format('v',6)
// Given data
N = 960;// in rpm
f = 50;// in Hz
Ns = 1000;// in rpm
s = ((Ns-N)/Ns)*100;// %s in %
disp(s,"The slip in % is");
f_r = (s/100)*f;// in Hz
disp(f_r,"The frequency of rotor induced emf in Hz is");
// Ns = (120*f)/P;
P = (120*f)/Ns;
disp(P,"The number of ploes is");
// Speed of rotor field with respect to rotor structure 
s1 = (120*f_r)/P;//in rpm
disp(s1,"Speed of rotor field with respect to rotor structure in rpm is");
