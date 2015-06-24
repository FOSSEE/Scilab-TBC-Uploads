//======================================================================================================
// chapter 4 example 9

clc;
clear;

//input data 
 N      = 6.023*10^26;      //avagadro number  (lb-mol)^-1
 alpha  = 3.28*10^-40;      //polarisability in F*m^2
 M      = 32;               //molecular weight in kilograms
 p      = 2.08*10^3;        //density of sulphur in g/cm^3
 e0     = 8.85*10^12;       //permitivity in F/m

//calculation
 er = ((2*N*p*alpha)+(3*M*e0))/((3*M*e0)-(N*p*alpha));          

//result

 mprintf('relative dielectric constant =%3.1f\n',er);
 mprintf(' Note: calculation mistake in text book in calculating relative dielectric constant');
//=======================================================================================================
 
