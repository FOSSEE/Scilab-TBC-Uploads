
// Ex4_28
clc;

// Given:
t=14.3;// half life in days
// Solution:
k=0.693/(t*24*3600);
N=(3.7*10^10)/(k);// No. of atoms in 1 Ci
N1=N*(1-(exp(-0.693/14.3)));// atoms of S32 produced
mass=(N1*32)/(6.022*10^23);

m1=mass*10^6;// in micro grams
printf("The mass in micro-grams is %f.",m1)

