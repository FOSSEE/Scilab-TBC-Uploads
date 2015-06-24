//example 3.15

clear;
clc;

//Given:
Hc=-5645;//standard enthalpy of combustion of reaction:C12H22O11(s)+12O2(g)->12CO2(g)+11H2O(l) [KJ/mol]
Hf1=-393.51;//standard heat of formation of CO2: C(s)+O2(g)->CO2(g) [KJ/mol]
Hf2=-285.83;//standard heat of formation of H2O: H2(g)+0.5O2(g)->H2O(l) [KJ/mol]


//to find the standard heat of formaton of solid sucrose
//reaction:12C(s)+11H2(g)+5.5O2(g)->C12H22O11(s)
Hf=12*Hf1+11*Hf2-Hc;//[KJ/mol]
printf("Hf(standard heat of formation of solid sucrose)=%f KJ/mol",Hf);