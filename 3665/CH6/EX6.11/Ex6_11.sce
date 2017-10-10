clc//
//
//

//Variable declaration
m=9.1*10^-31;     //mass of electron(kg)
h=6.626*10^-34;    //planck's constant
lamda=1.66*10^-10;    //wavelength(m)

//Calculation
v=h/(m*lamda);    //velocity(m/s)
KE=(1/2)*m*v^2;    //kinetic energy(eV)

//Result
printf("\n velocity is %0.0f km/s",v/10^3)
printf("\n kinetic energy is %0.2f eV",KE/(1.6*10^-19))
