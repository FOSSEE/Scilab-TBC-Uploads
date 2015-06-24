//computation of free energy of a rxn from conc of components

clear;
clc;

printf("\t Example 18.8\n");

T=298;//temperature, K
R=8.314;//gas constant, J/K mol
deltaG0=5.4*10^3;//standard free energy, kJ/mol
pNO2=0.122;//pressure of NO2, atm
pN2O4=0.453;//pressure of N2O4, atm
deltaG=deltaG0+R*T*log(pNO2^2/pN2O4);//here solubility product is equal to equilibrium constant

if(deltaG<0) then//equilibrium determination
    d="net reaction proceeds from left to right to reach equilibrium";
else
    d="net reaction proceeds from right to left to reach equilibrium";
end;
printf("\t the free energy for the given reaction is : %4.2f kJ/mol and %s\n",deltaG*10^-3,d);

//End
