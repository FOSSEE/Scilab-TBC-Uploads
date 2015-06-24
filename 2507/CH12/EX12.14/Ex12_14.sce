clc
clear
printf("Example 12.14 | Page number 443 \n\n");
//Find LCV and HCV of gaseous hexane
//Given data
delta_H_std = -45101 //kJ/kg
hfg = 2442 //kJ/kg //enthalpy of vaporisation

//Solution
LCV = -1*delta_H_std // kJ/kg hexane
printf("LCV of gaseous hexane = %.1f kJ/kg hexane\n",LCV)

m = 7*18/86 //mass of H2O per kg hexane
HCV = LCV+m*hfg //kJ/kg hexane
printf("HCV of gaseous hexane = %.1f kJ/kg hexane",HCV)
