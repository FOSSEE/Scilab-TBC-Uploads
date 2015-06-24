//Entropy changes in the system

clear;
clc;

printf("\t Example 18.2\n");

//(a)
SCaO=39.8;//standard entropy of CaO, J/K mol
SCO2=213.6;//standard entropy of CO2, J/K mol
SCaCO3=92.9;//standard entropy of CaCO3, J/K mol

deltaSrxn=SCaO+SCO2-SCaCO3;//standard entropy change of the reaction, J/K mol
printf("\t (a) the standard entropy of reaction is : %4.1f J/K mol\n",deltaSrxn);

//(b)
SNH3=193;//standard entropy of NH3, J/K mol
SN2=192;//standard entropy of N2, J/K mol
SH2=131;//standard entropy of H2, J/K mol

deltaSrxn=2*SNH3-(SN2+3*SH2);//standard entropy change of the reaction, J/K mol
printf("\t (b) the standard entropy of reaction is : %4.0f J/K mol\n",deltaSrxn);

//(c)
SHCl=187;//standard entropy of HCl, J/K mol
SH2=131;//standard entropy of H2, J/K mol
SCl2=223;//standard entropy of Cl2, J/K mol

deltaSrxn=2*SHCl-SH2-SCl2;//standard entropy change of the reaction, J/K mol
printf("\t (c) the standard entropy of reaction is : %4.0f J/K mol\n",deltaSrxn);
//End
