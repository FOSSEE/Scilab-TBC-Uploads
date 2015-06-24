//Exa3.25
clc;
clear;
close;
format('v',3)
// given data
I_0=.15;// in micro amp
I_0=I_0*10^-6;// in A
V=0.12;// in V
V_T=26;// in mV
V_T=V_T*10^-3;// in V
I=I_0*(%e^(V/V_T)-1);// in amp
I=I*10^6;// in micro amp
disp("Large reverse bias current is : "+string(I)+" micro amp");
