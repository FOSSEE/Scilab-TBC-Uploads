clc;
clear;
Nf=15; //noise figure in dB
F=31.62;//power ratio
T=290; //Temperature in K
T_em=(F-1)*T

G1=10^(6); //power ratio
N_t=80; //Noise temperature in K
T_e=N_t+T_em/G1;

disp("Noise temperature of receiver (in K)");
disp(T_em);

// change in answer....the calculation in the book is wrong

disp("Overall Noise temperature of receiving system(in K) is");
disp(T_e);
