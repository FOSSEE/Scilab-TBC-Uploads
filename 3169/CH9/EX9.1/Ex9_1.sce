//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 9.1
//calculation of the volume resistivity

//given data
V=1000//applied voltage(in V)
Rs=10^7//standard resistance(in ohm)
n=3000//universal shunt ratio
Ds=33.3//deflection(in cm) for Rs
D=3.2//deflection(in cm)
d=10//diameter(in cm) of the electrodes
t=2*10^-1//thickness(in cm) of the specimen

//calculation
G=V/(Rs*n*Ds)//galvanometer sensitivity
R=V/(D*G)//resistance of the specimen
r=d/2//radius of the electrodes
rho=(%pi*r^2*R)/t//volume resistivity

printf('The volume resistivity is %3.3e ohmcm',rho)
