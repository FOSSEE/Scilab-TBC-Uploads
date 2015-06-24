clc
clear
printf("Example 12.11 | Page number 437 \n\n");
//Find standard delta_H for reaction
//Given Data
//Formation Enthalpies
hf_CO2 = -393510 //kJ/kmol
hf_H2O = -285838 //kJ/kmol
hf_C3H8 = -104680 //kJ/kmol
hf_O2 = 0 //kJ/kmol

//Solution
Hp = 3*hf_CO2 + 4*hf_H2O 
Hr = hf_C3H8 + 5*hf_O2
deltaH_std = Hp-Hr
printf("Standard change in enthalpy for the reaction = %.1f kJ/kg",deltaH_std/44)
