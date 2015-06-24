//entropy changes in the system for phase transitions

clear;
clc;

printf("\t Example 18.5\n");

//for fusion
T=5.5+273;//temperature of fusion, K
deltaH=10.9*1000;//change in enthalpy, J/mol
deltaSf=deltaH/T;//since in fusion deltaG=0, J/ K mol

//for vaporisation
T=80.1+273;//temperature of vaporisation, K
deltaH=31*1000;//change in enthalpy, J/mol
deltaSv=deltaH/T;//since in vaporisation deltaG=0, J/ K mol

printf("\t the entropy change for fusion and condensation are : %4.1f J/K mol and %4.1f J/K mol respectively\n",deltaSf,deltaSv);

//End
