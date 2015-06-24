//==========================================================================
// chapter 4 example 1

clc;
clear;

//input data
 alpha      = 1.8*10^-40;           //polarisability of argon in Fm^2
 e0         = 8.85*10^-12;          //dielectric constant F/m
 N1         = 6.02*10^23;           //avagadro number in mol^-1
 x          = 22.4*10^3;            //volume in m^3
 
//formula
//er-1=N*p/e0*E=(N/e0)*alpha
//calculation
 N          = N1/double(x);                 //number of argon atoms in per unit volume in cm^3
 N2         = N*10^6;                      //number of argon atoms in per unit volume in m^3
 er     = 1+((N2/e0))*alpha;               //dielectric constant F/m


//result
mprintf('dielectric constant of argon=%3.7f\n',er);
//==========================================================================
