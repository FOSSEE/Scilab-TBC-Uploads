clc
clear

//INPUT
m=32;//mass of the oxygen molecule in gm
n=1.67*10^-27;//mass of one electron
k=1.38*10^-23;//boltzzmann constant in ergs/cal
t=200;//temperature of the oxygen in K
c=(100+101)/2;//average speed of the oxygen molecule in m/s

//CALCULATIONS
a=m*n/(2*3.14*k*t);
p=4*3.14*(a^(3/2))*(c^2)*(2.303^(-a));//probability that the oxygen speed is lies between in m/sec

//OUTPUT
mprintf('probability that the oxygen speed is lies between is %3.16f m/sec',p)
