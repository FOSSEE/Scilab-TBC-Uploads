
//Ex10_10

clc;

// Given:
M=55;// wt of Mn
m=0.1;// in g
t=90;// min irradated
flux=10^6;
t1=5; //in hours
cs=13.3*10^-24// in cm^2
hl=2.58;// in hours
Na=6.022*10^23;
r=100;// in %
// Solution:
s=1-(exp(-.693*t/(2.58*60)));
A=(m*Na*r*flux*cs*s)/(100*M);
x=exp(-0.693*5/2.58);
// activity after cooling period

A1=A*x*60;// in  dpm
printf("The activity of sample in dpm is = %f", A1)
