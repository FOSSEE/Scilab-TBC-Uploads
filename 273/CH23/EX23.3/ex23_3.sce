clc;clear;
//Example 23.3
//calculation of electronic polarizability and relative permittivity

//given values

e=8.85*10^-12;//permittivity in F/m
N=9.8*10^26;//atoms per m^3
r=.53*10^-10;//radius in m


//calculation
alpha=4*%pi*e*r^3;
disp(alpha,'electronic polarizability (in F/m^2)is ');
er=1+(4*%pi*N*r^3);
disp(er,'relative permittivity is')
