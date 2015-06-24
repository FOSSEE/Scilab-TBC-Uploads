//chapter 2
//example 2.6
//calculate packing fraction and density
//page 43
clear;
clc;
//given
r_Na=0.98; // in Angstrom (radius of sodium ion)
r_Cl=1.81; // in Angstrom (radius of chloride ion)
M_Na=22.99; // in amu (atomic mass of sodium)
M_Cl=35.45; // in amu (atomic mass of chlorine)
//calculate
a=2*(r_Na+r_Cl); // lattice parameter
printf('\nLattice constant  is \ta=%.2f Angstrom',a);
//PF=volume of ions present in the unit cell/volume of unit cell
PF=((4*(4/3)*%pi)*r_Na^3+(4*(4/3)*%pi)*r_Cl^3)/a^3;
printf('\nPacking fraction is %.3f',PF);
//Density=mass of unit cell/volume of unit cell
p=4*(M_Na+M_Cl)*1.66E-27/(a*1E-10)^3;
printf('\nDensity is \tp=%.f Kg/m^3',p);
p=p*1E-3; //changing unit to gm/cm^-3
printf('\nDensity is \tp=%.2f g/cm^3',p);
