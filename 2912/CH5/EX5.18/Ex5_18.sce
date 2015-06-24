//chapter 5
//example 5.18
//Calculate uncertainty in the position of electron
//page 109-110
clear;
clc;
//given
v=6.6E4; // m/s (speed of electron)
poc=0.01; // percentage of uncertainty
h=6.63E-34; // in J-s (Planck's constant)
m=9E-31; // in Kg (mass of electron)
pi=3.14; // value of pi used in the solution
//calculate
p=m*v; // calculation of momentum
printf('\nThe momentum of electron is \t\t\tp=%1.2E Kg-m/s',p);
dp=(poc/100)*p; // calculation of uncertainty in the momentum
printf('\nThe uncertainty in the momentum of electron is\tdp=%1.2E Kg-m/s',dp);
// Since dx*dp=h/4*pi  (uncertainty relation)
dx=h/(4*pi*dp); // calculation of uncertainty in the position
printf('\nThe uncertainty in the position of electron is\tdx=%1.2E Kg-m/s',dx);
// Note; solution is incomplete in the book
