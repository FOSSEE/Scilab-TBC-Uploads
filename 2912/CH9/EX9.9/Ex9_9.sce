// chapter 9
// example 9.9
// Find the energy band gap
// page 275
clear;
clc;
//given
rho1=4.5;// in ohm-m (resistivity at 20 degree Celcius)
rho2=2.0;// in ohm-m (resistivity at 32 degree Celcius)
k=1.38E-23; // in J/K (Boltzmann’s constant)
T1=20, T2=32; // in degree Celcius (two temperatures)
e=1.6E-19; // in C (charge of electron)
// calculate
T1=T1+273;// changing unit from degree Celius to K
T2=T2+273;// changing unit from degree Celius to K
// since sigma=e*u*C*T^(3/2)*exp(-Eg/(2*k*T))
// therefore sigma1/sigma2=(T1/T2)^3/2*exp((-Eg/(2*k)*((1/T1)-(1/T2))
// and sigma=1/rho 
// therefore we have rho2/rho1=(T1/T2)^3/2*exp((-Eg/(2*k)*((1/T1)-(1/T2))
// re-arranging above equation for Eg, we get Eg=(2*k/((1/T1)-(1/T2)))*((3/2)*log(T1/T2)-log(rho2/rho1))
Eg=(2*k/((1/T1)-(1/T2)))*((3/2)*log(T1/T2)-log(rho2/rho1));
printf('\nThe energy band gap is \tEg=%1.2E J',Eg);
Eg=Eg/e;// changing unit from J to eV
printf('\n\t\t\t  =%.2f eV',Eg);
