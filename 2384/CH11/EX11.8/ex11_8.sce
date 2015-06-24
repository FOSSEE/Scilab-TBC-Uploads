// Exa 11.8
clc;
clear;
close;
format('v',6)
// Given data
V = 440;// in V
f = 50;// in Hz
N = 1450;// in rpm
Ns = 1450;// in rpm
Nr = 1450;// in rpm
P = round((120*f)/Ns);
disp(P,"The number of poles in the machine is");
P = 4;
Ns = (120*f)/P;// in rpm
disp(Ns,"Speed of rotation air gap field in rpm is");
k = 0.8/1;
//Pemf = k*E1 = k*V;
Pemf = k*V;// produced emf in rotor in V
disp(Pemf,"Produced emf in rotor in V is");
s = ((Ns-Nr)/Ns)*100;// in %
Ivoltage = k*(s/100)*V;// rotor induces voltage in V
f_r = (s/100)*f;// in Hz
disp(f_r,"The frequency of rotor current in Hz is ");
