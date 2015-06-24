//chapter 5
//example 5.3
//Calculate de-Broglie wavelength
//page 104
clear;
clc;
//given
m_e=9.1E-31; // in Kg (mass of electron)
m_n=1.676E-27; // in Kg (mass of neutron)
h=6.625E-34; // in J-s (Planck's constant)
c=3E8; // in m/s (velocity of light)
//calculate
E_e=m_e*c^2; // rest mass energy of electron
E_n=2*E_e; // given (kinetic energy of neutron)
//Since K=m*v^2/2
// Therefore v=sqrt(2*K/m)
// Since lambda=h/(m*v)
// Therefore we have
lambda=h/sqrt(2*m_n*E_n); //calculation of wavelength
printf('\nThe wavelength is\t=%1.1E m',lambda);
lambda=lambda*1E10; //changing unit from m to Angstrom
printf('\n\t\t\t=%1.1E Angstrom',lambda);
