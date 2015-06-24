//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.1
//calculation of the initial acceleration of the particles

//given data
m1=1//masss(in kg) of particle1
m2=2//masss(in kg) of particle2
r=50*10^-2//separation(in m) between the two particles
G=6.67*10^-11//universal constant of gravitation(in N-m^2/kg^2)

//calculation
F=G*m1*m2/(r*r)//force of gravitation
a1=F/m1//initial acceleration of the particle1
a2=F/m2//initial acceleration of the particle2

printf('the initial acceleration of the particle1 towards particle2 is %3.1e m/s^2',a1)
printf('\nthe initial acceleration of the particle2 towards particle1 is %3.1e m/s^2',a2)
