//Exa3.28
clc;
clear;
close;
// given data'
format('v',13)
N_D=10^17*10^6;// in m^-3
N_A=0.5*10^16*10^6;// in atoms/m^3
epsilon_r=10;// in F/m
epsilon_o=8.85*10^-12;// in F/m
epsilon=epsilon_r*epsilon_o;
e=1.602*10^-19;// in C (electron charge)
// (i) when no external voltage is applied i.e.
V=0;
V_B=0.7;// in V
W=sqrt(2*epsilon*V_B/e*(1/N_A+1/N_D));
disp("Junction width is : "+string(W)+" m");
// (ii) when external voltage of -10 V is applied i.e.
V=-10;// in V
V_o=0.7;// in V
V_B=V_o-V;
W=sqrt(2*epsilon*V_B/e*(1/N_A+1/N_D));
disp("Junction width is : "+string(W)+" m");

// Note: Answer in the book is wrong
