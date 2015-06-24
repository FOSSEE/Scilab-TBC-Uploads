//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 4.2
//calculation of voltage at which an internal discharge can occur

//given data
d1=1//thickness(in mm) of the internal void
dt=10//thickness(in mm) of the specimen
epsilon0=8.89*10^-12//electrical permittivity(in F/m) of free space
epsilonr=4//relative permittivity of the dielectric
Vb=3//breakdown strength(in kV/mm) of air

//calculation
d2=dt-d1
epsilon1=epsilon0*epsilonr//electrical permittivity(in F/m) of the dielectric
V1=Vb*d1//voltage at which air void of d1 thickness breaks
V=(V1*(d1+(epsilon0*d2/epsilon1))/d1)

printf('the voltage at which an internal discharge can occur is %3.2f kV.',V)
//correction : we have to find applied voltage V
 
