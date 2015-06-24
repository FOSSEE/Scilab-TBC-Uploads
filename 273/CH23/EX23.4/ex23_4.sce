clc;clear;
//Example 23.4
//calculation of electronic polarizability and relative permittivity

//given values
w=32;//atomic weight of sulphur 
d=2.08*10^3;//density in kg/m^3
NA=6.02*10^26;//avogadros number
alpha=3.28*10^-40;//electronic polarizability in F.m^2
e=8.854*10^-12;//permittiviy
//calculation

n=NA*d/w;
k=n*alpha/(3*e);
er=(1+2*k)/(1-k);
disp(er,'relative permittivity is')