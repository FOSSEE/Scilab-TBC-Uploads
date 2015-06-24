//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 9.7
//calculation of dielectric constant and loss factor tandelta

//given data
R3=1000/%pi//resistance(in ohm) in CD branch
R4=62//variable resistance(in ohm)
Cs=100*10^-12//standard capacitance(in F)
epsilon0=8.854*10^-12//electrical permittivity(in F/m) of free space
f=50//frequency(in Hz)
C3=50*10^-9//variable capacitor(in F)
d=1*10^-3//thickness(in m) of sheet
a=100*10^-4//electrode effective area(in m^2)

//calculation
Cx=R3*Cs/R4
epsilonr=Cx*d/(epsilon0*a)
omega=2*%pi*f
tandelta=omega*C3*R3*d

printf('The dielectric constant is %3.2f',epsilonr)
printf('\nThe loss factor tandelta is %3.7f',tandelta)
//In equation of tandelta d is multiplied
