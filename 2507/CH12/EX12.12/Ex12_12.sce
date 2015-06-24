clc
clear
printf("Example 12.12 | Page number 438 \n\n");
//Find the heat transferred from the combustor per kg ethylene
//Given Data
Cp_C2H4 = 28*1.548 //kJ/lmolK
Cp_O2 = 32*0.922 //kJ/lmolK
Cp_N2 = 28*1.042 //kJ/lmolK
Cp_CO2 = 44*0.842 //kJ/lmolK
Cp_H2O = 18*1.86 //kJ/lmolK

//Solution
deltaH_BX = (2*Cp_CO2 + 2*Cp_H2O + 0.3*Cp_O2 + 12.408*Cp_N2)*(120-25)
deltaH_YA = (Cp_C2H4 + 3.3*Cp_O2 + 12.408*Cp_N2)*(25-50)
hf_CO2 = -393510 //kJ/kmol
hf_H2O = -241820 //kJ/kmol
hf_C2H4 = 52283 //kJ/kmol
deltaH_XY = 2*hf_CO2 + 2*hf_H2O - hf_C2H4 //kJ/kmol
deltaH_BA = deltaH_BX + deltaH_YA + deltaH_XY //kJ/kmol

printf("The heat transferred from the combustor per kg ethylene = %.1f kJ/kg ethane",deltaH_BA/28)
