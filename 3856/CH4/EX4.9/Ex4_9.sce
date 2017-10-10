//Calulate the standard Enthalpy of the reaction C6H12O6(s)+6O2(g)givs 6CO2(g)+6H2O(l)at 298 K

//Examlpe 4.9

clc;

clear;

delfHbar1=-393.5;  //standard Molar Enthalpy of formation at 298 K and 1 Bar for CO2 in kJ mol^-1

delfHbar2=-285.8;  //standard Molar Enthalpy of formation at 298 K and 1 Bar for H2O in kJ mol^-1

delfHbar3=-1274.5;  //standard Molar Enthalpy of formation at 298 K and 1 Bar for C6H12O6 in kJ mol^-1

delfHbar4=0;  //standard Molar Enthalpy of formation at 298 K and 1 Bar for O2 in kJ mol^-1

delfHbar=(6*delfHbar1+6*delfHbar2)-(delfHbar3+6*delfHbar4);  //standard Enthalpy of the reaction in kJ mol^-1

printf("Standard Enthalpy of the reaction = %.1f kJ mol^-1",delfHbar);
