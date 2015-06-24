clc;
clear;
F=16;// Power ratio in dB
k=1.38*10^(-23) ;// boltzman constant
T=290; //temperature in K
B=5; //Bandwidth in MHz

P=(F-1)*k*T*B*10^(6);
disp(" Amplifier Inout noise power (in watts) is");
disp(P);
 
