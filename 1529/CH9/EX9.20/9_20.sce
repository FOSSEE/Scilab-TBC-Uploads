//Chapter 9, Problem 20
clc;
M=0.2;
dI=10-4;
dt=10*10^-3;
N=500;
E=-M*(dI/dt);
dphi=(E*dt)/N;
printf("Induced emf = %d V\n\n\n",E);
printf("Change of flux = %f mWb",dphi*1000);
