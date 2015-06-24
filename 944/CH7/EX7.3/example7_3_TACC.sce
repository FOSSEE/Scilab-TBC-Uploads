//example 7.3

clear;
clc;

//Given:
dE=4.3*10^-20;//difference in energy levels[J]
T1=0.000001;//Initial Temperature[K](approximately zero , needed for execution)
T2=300;//Final Temperature[K]
k=1.381*10^-23;//Boltzmann constant [J/K]

//To find the ratio of no. of particle per state for two states separated by an energy dE
x1=k*T1;
r1=exp(-dE/x1);
x2=k*T2;
r2=exp(-dE/x2);
disp(r1,'The ratio of no. of particles per state at 0K is ');
disp(r2,'The ratio of no. of particles per state at 300K is ');









