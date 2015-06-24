//chapter 5
//example 5.17
//Calculate percentage of uncertainty in the momentum of electron
//page 109
clear;
clc;
//given
K=1; // in KeV (kinetic energy of electron)
dx=1; // in Angstrom (uncertainty in the position)
h=6.63E-34; // in J-s (Planck's constant)
m=9.1E-31; // in Kg (mass of electron)
pi=3.14; // value of pi used in the solution
e=1.6E-19; // in C (charge of electron)
//calculate
dx=dx*1E-10; // since dx is in Angstrom
// Since dx*dp=h/4*pi  (uncertainty relation)
dp=h/(4*pi*dx); // calculation of uncertainty in the momentum
printf('\nThe uncertainty in the momentum of electron is\tdp=%1.2E Kg-m/s',dp);
K=K*1E3*1.6E-19; // changing unit from KeV to J
p=sqrt(2*m*K); // calculation of momentum 
printf('\nThe momentum of electron is\t\t\t p=%1.2E Kg-m/s',p);
poc=(dp/p)*100; // calculation of percentage of uncertainty
printf('\nThe percentage of uncertainty in the momentum  is =%.1f',poc);
