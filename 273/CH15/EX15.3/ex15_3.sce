clc;clear;
//Example 15.3
//calculation of binding energy 

//given values
Mp=1.00758;//mass of proton in amu
Mn=1.00897;//mass of nucleon in amu
M=4.0028;//mass of Helium nucleus in amu
amu=931.4;//amu in MeV

//calculation
E1=(2*Mp+2*Mn-M)*amu;//total binding energy
disp(E1,'Binding energy in MeV is');
E2=E1*10^6*1.6*10^-19;
disp(E2,'binding energy in Joule is');
