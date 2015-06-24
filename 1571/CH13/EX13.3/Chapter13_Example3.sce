clc
clear

//INPUT
n=12;//no.of particles
n1=8;
n2=4;

//CALCULATIONS
p=n*(n-1)*(n-2)*(n-3)/(n2*(n2-1)*(n2-2)*(2^n));//probability of distribution (8,4)

//OUTPUT
mprintf('probability of distribution (8,4) is %3.5f',p)
