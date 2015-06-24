//Example 5.7 // Shunt resistance
clc;
clear;
close;
//given data :
N=800;// turns
I=10;// in A
reluctance=150000;// in AT per Wb
fi=(N*I)/reluctance;
K=.15*10^-3;// in Wb turns/ division
rs=0.025;// in ohm
Ns=1;
theta=120;//divisions
S=(K*rs*theta)/((fi*Ns)-(K*theta));
disp(S,"The shunt resistance,S(ohm) = ")
