// chapter 9
// example 9.2
// Find the temperature at which number of electrons becomes 10 times
// page 272
clear;
clc;
//given
Eg=0.67; // in eV (Energy band gap)
k=1.38E-23; // in J/K (Boltzmann’s constant)
T1=298; // in K (room temperature)
e=1.6E-19; // in C (charge of electron)
K=10; // ratio of number of electrons at different temperature
// calculate
Eg=Eg*e; // changing unit from eV to Joule
// since ne=Ke*exp(-Eg/(2*k*T))
// and ne/ne1=exp(-Eg/(2*k*T))/exp(-Eg/(2*k*T1)) and ne/ne1=K=10
// therefore we have 10=exp(-Eg/(2*k*T))/exp(-Eg/(2*k*T1))
// re-arranging the equation for T, we get T2=1/((1/T1)-((2*k*log(10))/Eg))
T=1/((1/T1)-((2*k*log(10))/Eg)); // calculation of the temperature
printf('\nThe temperature at which number of electrons in the conduction band of a semiconductor increases by a factor of 10 is \tT=%.f K',T);
// Note: there s slight variation in the answer due to round off calculation
