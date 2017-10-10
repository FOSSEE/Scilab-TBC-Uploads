//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 2.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given - Case(1)
NA=6e26;//Avagadro's number
rho=8.93e3;//density of copper in SI Units
A=63.54;//Atomic mass number of Cu
e=1.6e-19;//charge of electrons in C
m=9.1e-31;//rest mass of electrons in kg
T=2.6e-14;//mean free time between collisions in s

n=NA*rho/A;//number of atoms per unit volume in m^(-3)
mprintf("n = %.1e m^(-3)",n);
SigmaCu=n*(e^2)*T/m;//electrical conductivity of Cu in SI Units
mprintf("\n Sigma of Cu = %.1e (Ohm m)^(-1)",SigmaCu);//The answers vary due to round off error

//given - Case(2)
ni=1.6e16;//number of holes or electrons per unit volume of intrinsic silicon in m^(-3)
e=1.6e-19;//charge of electrons in C
Muc=0.135;//electron mobility in SI Units
Mun=0.048;//hole mobility in SI Units

SigmaSi=ni*e*(Muc+Mun);//electrical conductivity of Si in SI Units
mprintf("\n Sigma of Si = %.1e (Ohm m)^(-1)",SigmaSi);
