clear;
clc;
printf("\nEx-6.16\n");
//page no.-191
//given
rho=1.54*10^-8;.......//resistivity in ohm m
E=100;...............//electric field in V/m
no=5.8*10^28;.........//no of free electrons per unit vol
m=9.11*10^-31;....//mass
e=1.6*10^-19;......//charge in C

tau=m/(no*e^2*rho)........//mean collision time

printf("\nmean collision time is 3.98*10^-14 s\n");
v=((e*E)/m)*tau........//drift velocity

printf("\ndrift velocity is 0.7 m/s\n");
mu=v/E.........//mobility

printf("\nmobility is 7*10^-3 m^2/Vs");
