//chapter 5
//example 5.14
//Calculate uncertainty in the momentum and uncertainty in the velocity
//page 108
clear;
clc;
//given
dx=0.2; // in Angstrom (uncertainty in the position)
h=6.6E-34; // in J-s (Planck's constant)
m0=9.1E-31; // in Kg (mass of electron)
pi=3.14; // value of pi used in the solution
//calculate
dx=dx*1E-10; //since dx is in Angstrom
// Since dx*dp=h/4*pi  (uncertainty relation)
dp=h/(4*pi*dx); // calculation of uncertainty in the momentum
printf('\nThe uncertainty in the momentum is\tdp=%1.2E Kg-m/s',dp);
//since dp=m*dv
dv=dp/m0; // calculation of uncertainty in the velocity
printf('\nThe uncertainty in the velocity is\tdv=%1.2E m/s',dv);
