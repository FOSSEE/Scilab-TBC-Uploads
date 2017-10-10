//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 11.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
//E1 & E2 are the ground level and first excited level of energy respectively
h=6.626e-34;//Planck's constant in SI Units
c=3e8;//speed of electrons in m/s
lambda=694e-9;//wavelength corresponding to the energy gap between E1 & E2
//Let E2-E1=DeltaE
DeltaE=h*c/lambda;
mprintf("\n E2-E1=%e",DeltaE);//Energy gap between E1 & E2 in J
//The answers vary due to round off error
kB=1.38e-23;//Boltzmann constant in SI Units
T=300;//Temperature in K
mprintf("\n kB*T=%e",kB*T);
//Let N2/N1 be N
N=exp(-DeltaE/(kB*T));//Ratio of population density at E2 and E1 energy levels
mprintf("\n N2/N1=%e",N);//The answers vary due to round off error
