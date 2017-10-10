//Calculate the standard molar Enthalpy of formatyion of Acetylene (C2H2) from its element

//Example 4.8

clc;

clear;

delH1deg=-393.5;  //Enthalpy change for the reaction C(graphite)+O2(g) givs CO2(g) in kJ mol^-1

delH2deg=-285.8;  //Enthalpy change for the reaction H2(g)+1/2O2(g) givs H2O(l) in kJ mol^-1

delH3deg=-2598.8;  //Enthalpy change for the reaction 2C2H2(g)+5O2(g)givs 4CO2(g)+2H2O(l)in kJ mol^-1

delH4deg=-delH3deg;  //Enthalpy change for the reaction 4CO2(g)+2H2O(l)givs 2C2H2(g)+5O2(g)in kJ mol^-1

delHdeg=(4*delH1deg+2*delH2deg+delH4deg)/2;  //Molar Enthalpy for formation of acetylene in kJ mol^-1

printf("Molar Enthalpy = %.1f kJ mol^-1 ",delHdeg);  
