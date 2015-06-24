//chapter 7
//example 7.6
//Calculate the electronic polarisability of Helium atoms
//page 189-190
clear;
clc;
//given
Er=1.0000684; // di-elecrtic constant of Helium gas at NTP
Eo=8.85E-12; // in F/m (absolute permittivity)
N=2.7E25; // number of atomsper unit volume
//calculate
// Since Er-1=(N/Eo)*alpha_e
// therefore we have
alpha_e=Eo*(Er-1)/N; // calculation of electronic polarisability of Helium
printf('\nThe electronic polarisability of Helium gas is \t=%1.2E Fm^2',alpha_e);
// NOTE: There is slight variation in the answer due to round off
