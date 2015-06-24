//Ex_2_20
clc;
clear;
close;
format('e',9);
//given data :
I1=100;//A
I2=10;//A
l=20/100;//m
r1=1/100;//m
r2=11/100;//m
mu0=4*%pi*10^-7;//permeability of air
//Force of attraction between Conductor & AB
F1=mu0*I1*I2*l/2/%pi/r1;//N
//Force of repulsion between Conductor & CD
F2=mu0*I1*I2*l/2/%pi/r2;//N
//Net Force
F=F1-F2;//N
disp(F,"Resultant force developed(N)");
