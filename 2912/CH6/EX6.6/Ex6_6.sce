//chapter 6
//example 6.6
//Calculate average kinetic energy and velocity of molecules
//page 148
clear;
clc;
//given
T=30; // in Celcius (temperature)
k=1.38E-23; // in J/K (Boltzmann's constant)
m_p=1.67E-27; // in Kg (mass of proton)
e=1.6E-19; // in C (charge of electron)
//calculate
T=T+273; // changing temperature from Celcius to Kelvin
KE=(3/2)*k*T; // calculation of average kinetic energy
printf('\nThe average kinetic energy of gas ,molecules is \tKE=%3.2E J',KE);
KE=KE/e; // changing unit from J to eV
printf('\n\t\t\t\t\t\t\t  =%f eV',KE);
m=1.008*2*m_p; // calculating mass of hydrogen gas molecule
c=sqrt(3*k*T/m); // calculation of velocity
printf('\n\nThe velocity of molecules is \tc=%.2f m/s',c);
// Note: There is calculation mistake in the answer of energy given in eV and that of velocity
