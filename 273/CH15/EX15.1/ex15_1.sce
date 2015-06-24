clc;clear;
//Example 15.1
//calculation of binding energy per nucleon

//given values
Mp=1.00814;//mass of proton in amu
Mn=1.008665;//mass of nucleon in amu
M=7.01822;//mass of Lithium nucleus in amu
amu=931;//amu in MeV
n=7-3;//no of neutrons in lithium nucleus

//calculation
ET=(3*Mp+4*Mn-M)*amu;//total binding energy in MeV
E=ET/7;//7 1s the mass number
disp(E,'Binding energy per nucleon in MeV is');
