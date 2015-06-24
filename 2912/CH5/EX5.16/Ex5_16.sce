//chapter 5
//example 5.16
//Calculate minimum uncertainty in the momentum and minimum kinetic energy of proton
//page 108-109
clear;
clc;
//given
dx=5E-15; // in m (radius of nucleus or uncertainty in the position)
h=6.6E-34; // in J-s (Planck's constant)
m=1.67E-27; // in Kg (mass of proton)
pi=3.14; // value of pi used in the solution
e=1.6E-19; // in C (charge of electron)
//calculate
// Since dx*dp=h/4*pi  (uncertainty relation)
dp=h/(4*pi*dx); // calculation of uncertainty in the momentum
printf('\nThe minimum uncertainty in the momentum of proton is\tdp=%1.2E Kg-m/s',dp);
p=dp; // minimum value of momentum to calculate mimimum kinetic energy
K=p^2/(2*m); // calculation of minimum kinetic energy of proton
printf('\nThe minimum kinetic energy of proton is\tK=%1.1E J',K);
K=K/e; //changing unit from J to eV
printf('\n\t\t\t\t\t=%1.1E eV',K);
K=K/1E6; // changing unit from eV to MeV
printf('\n\t\t\t\t\t=%.1f MeV',K);
