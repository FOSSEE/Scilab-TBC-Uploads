//Exa3.26
clc;
clear;
close;
format('v',5)
// given data
I=.01;// in A
I_0=2.5*10^-6;// in  amp
nita=2;// for silicon
V_T=26;// in mV
V_T=V_T*10^-3;// in V
// Formula I=I_0*(%e^(V/(nita*V_T))-1);
V=nita*V_T*log(I/I_0+1);
disp("Forward voltage is : "+string(V)+" V") ;
    