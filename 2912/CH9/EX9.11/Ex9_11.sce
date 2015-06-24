// chapter 9
// example 9.11
// Find the conductivity of p-type Ge crystal
// page 276-277
clear;
clc;
//given
uh=1900; // in cm^2/V-s (mobility of electron)
Na=2E17;// in /m^3 (acceptor doping concentration)
e=1.6E-19; // in C(charge of electron)
//calculate
uh=uh*1E-4; // changing unit from cm^2/V-s to m^2/V-s
Na=Na*1E6; // changing unit from 1/cm^3 to 1/m^3
nh=Na; // hole concentration 
// since sigma=ne*ue*e+nh*uh*e and nh>>ne
// therefore sigma=nh*uh*e
sigma=nh*uh*e; // calculation of conductivity
printf('\nThe conductivity of p-type Ge crystal is \t%.f  /ohm-m',sigma);
// Note: there is slight variation in the answer due to round off calculation
