//Caption:Find the dimensions of D and L
//Exa:9.1
clc;
clear;
close;
P=15000//Power of shunt motor(in watt)
V=440//Supplied voltage to motor(in volts)
n=1500//Speed of motor(in r.p.m)
e=88//Efficiency(in %)
B=0.65//Average flux density(in webers/m^2)
q=30000//Specific electric loading(ampere conductors/m)
p=4//Number of poles
R_f=220//Field resistance(in ohms)
P_i=P/(e/100)
I=P_i/V
I_f=V/R_f
D=170//Choosing the diameter(in mm)
L=(P_i)/((%pi^2)*((D^2)*(10^(-6)))*B*q*(n/60)*(10^(-3)))
disp(D,L,'Required dimensions of L and D(in mm) are=')