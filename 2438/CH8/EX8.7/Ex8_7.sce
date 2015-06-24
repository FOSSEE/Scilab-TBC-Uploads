//=============================================================================
// Chapter 8 example 7

clc;
clear;

// Variable declaration

k   = 8.62*10^-5;           //in eV/K
Eg  = 1.10;                 //energy in eV
 t1 = 200;                  //temperature in °C
 t2 = 27;                  //temperature in °C
 psi = 2.3*10^3;

// Calculations
// sigma = sigmao*exp(-Eg/(2kT))
// k     = sigma_473/sigma_300;
 t3  = t1+273;              //temperature in K
 t4  = t2+273;               //temperature in K
 k1        = exp((-Eg)/(2*k*t3));          //electrical conductivity in cm^-1.m^-1
 k2        = exp((-Eg)/(2*k*t4));          //electrical conductivity in cm^-1.m^-1
 k         = k1/k2;
 pm=      k/psi;

// Result

 mprintf('electrical conductivity of pure silicon =%3.2e.ohm^-1.m^-1\n',k);
 mprintf('Note:calculation mistake in electrical conductivity,and units of conductivity');
 
 //================================================================================
