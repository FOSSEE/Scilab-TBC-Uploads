//chapter 7
//example 7.5
//Calculate the electronic polarisability of sulphur
//page 189
clear;
clc;
//given
Er=3.75; // di-elecrtic constant of sulphur at 27 degree Celcius
gama=1/3; // internal field constant
p=2050; // in Kg/m^3 (density)
M_A=32; // in amu (atomic weight of sulphur)
Eo=8.85E-12; // in F/m (absolute permittivity)
N=6.022E23; // Avogadro's number
//calculate
// Since ((Er-1)/(Er+2))*(M_A/p)=(N/(3*Eo))*alpha_e
// therefore we have
alpha_e=((Er-1)/(Er+2))*(M_A/p)*(3*Eo/N); // calculation of electronic polarisability of sulphur
printf('\nThe electronic polarisability of sulphur is \t=%1.2E Fm^2',alpha_e);
// NOTE: There is slight variation in the answer due to round off
