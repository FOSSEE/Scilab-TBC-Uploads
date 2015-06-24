//Exa:1.36
clc;
clear;
close;
T=245;//in N-m
N=250;//in rpm
P_in=T*2*%pi*N/60;//in watts
//Corresponding to the value of P_in we found I=27.5A and E=233 V from the given curve shown in fig.1.102
E=233;//in volts
I=27.5;//in amperes
r=E/I;//resistance of the circuit
R=r-1;//External Resistance to be inserted (in ohms)
disp(R,'External Resistance to be inserted (in ohms)=')