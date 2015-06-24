//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 20


clear;
clc;

//Given:
T = 473; //temperature at entropy is to be determined (K)
Tf = 273; //base temperature (K)
Tb = 373; //boiling temperature (K)
Cpl = 4.2; //avearge heat capacity of water (kJ/kg K)
Cpg = 1.9; //avearge heat capacity of water vapour between 373 K and 473 K
Hv = 2257; //latent heat of vaporisation at 373 K (kJ/kg)

//To determine the absolute entropy of water vapour
//Entropy of water vapour is calculated using last three terms of equation of 4.55 (Page no. 108)
S = (Cpl*log(Tb/Tf))+(Hv/Tb)+(Cpg*log(T/Tb));
mprintf('Absolute entropy of water vapour at 473 K and 101.3 kPa is %f kJ/kg K',S);
mprintf('\nIt compares favourably with the value reported in steam tables');

//end