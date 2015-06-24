clc
clear
printf("Example 12.10 | Page number 435 \n\n");
//Find enthalpy of reaction
//Given Data
deltaH_gasgas = -2651.4e3 //kJ/kmol butane
hfg_butane = 370 //kJ/kg //enthalpies of vaporisation of butance
hfg_water = 2442 //kJ/kg //enthalpies of vaporisation of water
M_butane = 58 //g/mol
M_water = 18 //g/mol

//Solution
deltaH_liqliq = deltaH_gasgas + M_butane*hfg_butane - 5*M_water*hfg_water
printf("Enthalpy of reaction = %.1f kJ/kg",deltaH_liqliq/M_butane)
