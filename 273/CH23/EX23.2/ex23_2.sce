clc;clear;
//Example 23.2
//calculation of electronic polarizability

//given values

e=8.85*10^-12;//permittivity in F/m
er=1.0024;//relative permittivity at NTP
N=2.7*10^25;//atoms per m^3


//calculation
alpha=e*(er-1)/N;
disp(alpha,'electronic polarizability (in F/m^2)is ');
