close();
clear;
clc;
//number of turns 'N', leakage flux 'phi1', flux density in air gap 'Bg'
N = 100; 
l1 = 0.40; //m
l2 = l1/4;
A1 = 10*10^(-4); //m^2
A2 = A1/2;
lg = 2*10^(-3); //m
phi1 = 0.01 * 10^(-3); //Wb 
Bg = 0.6; //t
uo = 4*%pi * 10^(-7);
//for Bg corresponding value of
Hg = Bg/uo; //A/m
taug = Hg*lg;
B1 = Bg;
H1 = 100; //A/m
tau1 = H1*(l1+l1);
phig = Bg*A1;
//total flux produced by coil 'phic'
phic = phig+phi1;
//flux density in l2 'B2'
B2 = phic/A2; //T
//for 'B2', corresponding 'H2'
H2 = 410; //A/m
tau2 = H2*l2;
//total mmf 'tau'
tau = taug + tau1 + tau2;
I = tau/N; //A
mprintf("Current I required = %0.2f A",I);