// Scilab Code Ex12.6 : Page-606 (2011)
clc; clear;
M_i = 4.5;....// Intial value of total dipole moment of the sample
H_i = 0.84;....// External magnetic field, tesla
T_i = 4.2;....// Cooling temerature of the sample, K
H_f = 0.98;....// External magnetic field, tesla
T_f = 2.8;....// Cooling temerature of the sample, K
// According to the curie's law, Mf/Mi = (Hf/Hi)*(Ti/Tf)
M_f = M_i*H_f/H_i*T_i/T_f;
printf("\nThe total dipole moment of the sample = %5.3f joule/tesla",M_f);

// Result
// The total dipole moment of the sample = 7.875 joule/tesla 
