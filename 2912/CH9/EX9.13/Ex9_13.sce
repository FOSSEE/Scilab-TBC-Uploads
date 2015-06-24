// chapter 9
// example 9.13
// Find the probability of occupation of lowest level in conduction band
// page 277-278
clear;
clc;
//given
Eg=0.4; // in eV (Band gap of semiconductor)
k=1.38E-23; // in J/K (Boltzmann’s constant)
T1=0; // in degree Celcius (first temperature)
T2=50; // in degree Celcius (second temperature)
T3=100; // in degree Celcius (third temperature)
e=1.602E-19; //in C (charge of electron)
// calculate
T1=T1+273; // changing temperature form Celcius to Kelvin
T2=T2+273; // changing temperature form Celcius to Kelvin
T3=T3+273; // changing temperature form Celcius to Kelvin
Eg=Eg*e; // changing unit from eV to Joule
//Using F_E=1/(1+exp(Eg/2*k*T))
F_E1=1/(1+exp(Eg/(2*k*T1))); // calculation of probability of occupation of lowest level at 0 degree Celcius
F_E2=1/(1+exp(Eg/(2*k*T2))); // calculation of probability of occupation of lowest level at 50 degree Celcius
F_E3=1/(1+exp(Eg/(2*k*T3))); // calculation of probability of occupation of lowest level at 100 degree Celcius
printf('\nThe probability of occupation of lowest level in conduction band is\n\n');
printf('\t\t at 0 degree Celcius, F_E=%1.3E eV\n',F_E1);
printf('\t\t at 50 degree Celcius, F_E=%1.2E eV\n',F_E2);
printf('\t\t at 100 degree Celcius, F_E=%1.3E eV',F_E3);
