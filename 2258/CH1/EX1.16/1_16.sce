clc();
clear;
// To calculate the probability of finding the particle
n=1;   //lowest state
L=10;    //width in armstrong
L=L*10^-10;    //width in m
x=L/2;
delta_x=1;    //interval in armstrong
delta_x=delta_x*10^-10;    //interval in m
psi1=(sqrt(2/L))*sin(%pi*x/L);
A=psi1^2;
P=A*delta_x;
printf("probability of finding the particle is %f",P);
