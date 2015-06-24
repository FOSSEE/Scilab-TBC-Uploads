clc;clear;
//Example 2.3

//given values
d=6*10^-3;//distance between plates in m
V=900;//potential difference in V
B=0.5;//uniform magnetic field in Wb/m^2
Q=1.6*10^-19;//the charge on electron in C
R=10.6*10^-2;//circular track radius in m

//calculation
v=V/(B*d);
m=R*Q*B/v;
disp(m,'The mass(in kg) of particle')