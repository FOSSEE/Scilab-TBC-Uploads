clear ;
clc;
// Example 26.2
printf('Example 26.2\n\n');
//page no. 808
// Solution 

// Given 
// The main reaction is CO(g,1 atm,100 C) + (1/2)O2(g,1 atm,100 C)  --> CO2(g,1at,T K)                              (A)
// Input compounds
m1_CO = 1; // Moles of CO input- [g mol]
m1_O2 = 1 ;// Moles of O2 input - [g mol]
m1_N2 = 3.76 ;// Moles of N2 input - [g mol]
//Output compounds
m2_CO2 = 1 ;// Moles of CO2 output - [g mol]
m2_O2 = .50 ;// Moles of O2 output - [g mol]
m2_N2 = 3.76 ;// Moles of N2 output - [g mol]

// Additional data is obtained from Appendix D, according to book it is as follows:
// Inputs
H1_fCO = -110520 ;// Heat of formation of CO - [J/g mol] 
H1_fO2 = 0 ;// Heat of formation of O2 - [J/g mol] 
H1_fN2 = 0 ;// Heat of formation of N2 - [J/g mol] 
H1_CO = 2917 - 728 ;// Change in enthalpy during temperature change from 298K to 373 K of CO - [J/g mol] 
H1_O2 = 2953 - 732 ;// Change in enthalpy during temperature change from 298K to 373 K of input O2 - [J/g mol]
H1_N2 = 2914 - 728 ;// Change in enthalpy during temperature change from 298K to 373 K of input N2 - [J/g mol]

H_in  = (H1_fCO + H1_CO)*m1_CO + (H1_fO2 + H1_O2)*m1_O2 + (H1_fN2 + H1_N2)*m1_N2;// Enthalpy change for inputs -[J]

//Outputs - Assume it to be at 2000 K
H2_fCO2 = -393510 ;// Heat of formation of CO2 - [J/g mol] 
H2_fO2 = 0 ;// Heat of formation of O2 - [J/g mol] 
H2_fN2 = 0 ;// Heat of formation of N2 - [J/g mol] 
H2_CO2 = 92466 - 912 ;// Change in enthalpy during temperature change from 298K to 2000 K of CO2 - [J/g mol] 
H2_O2 = 59914-732 ;// Change in enthalpy during temperature change from 298K to 2000 K of output  O2 - [J/g mol] 
H2_N2 = 56902 - 728 ;// Change in enthalpy during temperature change from 298K to 2000 K of output  O2 - [J/g mol]   

H1_out  = (H2_fCO2 + H2_CO2)*m2_CO2 + (H2_fO2 + H2_O2)*m2_O2 + (H2_fN2 + H2_N2)*m2_N2 ;// Enthalpy change for outputs at 2000 K -[J]

del_H1 = H1_out - H_in ;// Net enthalpy change of process -[J]

//Output- Assume it to be at 1750 K
H2_fCO2 = -393510 ;// Heat of formation of CO2 - [J/g mol] 
H3_CO2 = 77455 - 912 ;// Change in enthalpy during temperature change from 298K to 1750 K of CO2 - [J/g mol] 
H3_O2 = 50555 -732 ;// Change in enthalpy during temperature change from 298K to 1750 K of output  O2 - [J/g mol] 
H3_N2 = 47940 - 728 ;// Change in enthalpy during temperature change from 298K to 1750 K of output  O2 - [J/g mol]   

H2_out  = (H2_fCO2 + H3_CO2)*m2_CO2 + (H2_fO2 + H3_O2)*m2_O2 + (H2_fN2 + H3_N2)*m2_N2 ;// Enthalpy change for outputs at 1750 K -[J]

del_H2 = H2_out - H_in ;// Net enthalpy change of process -[J]

printf('Heat of above reaction when output is assumed to be at 2000 K  is %.0f J.\n',del_H1) ;
printf(' Heat of above reaction  when output is assumed to be at 1750 K  is %.0f J.\n',del_H2) ;
// Energy balance here reduce to del_H = 0 
printf('\n So we can see that our desired result del_H = 0 is bracketed between 2000 K and 1750 K , hence we will use interpolation to get the theoretical flame temperature.\n') ;
// Use interpolation to get the theoretical flame temperature
del_H = 0 ;// Requred condition
Ft = 1750 + ((del_H - del_H2)/(del_H1 - del_H2))*(2000 - 1750) ;// Interpolation to get Flame temperature(Ft)-[K]
printf(' Theoretical flame temperature by interpolation is %.0f K.\n',Ft) ;