//chapter 4
//example 4.8
//calculate angle of first order diffraction maximum
//page 78-79
clear;
clc;
//given
K=0.02; // in eV (kinetic energy)
d=2.0; // in Angstrom (Bragg's spacing)
m=1.00898; // in amu (mass of neutron)
amu=1.66E-27; // in Kg (1amu=1.66E-27 Kg)
h=6.625e-34; // in J-s (Plank's constant)
n=1; //order
e=1.6E-19; // charge on electron
//calculate
//Since K=m*v^2/2
// therefore  v=sqrt(2*K/m)
// since lambda=h/(m*v)
//therefore we have lambda=h/sqrt(2*m*K)
m=m*amu; //changing unit from amu to Kg
K=K*e; //changing unit to J from eV
lambda=h/sqrt(2*m*K); // calculation of lambda
printf('\nThe wavelength is \t\t =%1.1E m',lambda);
lambda=lambda*1E10; //changing unit from m to Angstrom
printf('\n\t\t\t\t =%.1f Angstrom',lambda);
// Since 2dsin(theta)=n(lambda)
// therefore we have
theta=asind(n*lambda/(2*d)); // calculation of angle of first order diffraction maximum
printf('\nThe angle of first order diffraction maximum is %.f Degree',theta);
