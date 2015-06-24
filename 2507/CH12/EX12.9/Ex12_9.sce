clc
clear
printf("Example 12.9 | Page number 433 \n\n");
//Find the heat transfer from the combustor
excess_air = 10 //%
tR = 30 //°C //temperature of reactant
tP = 120 //°C //temperature of product
delta_H = -802.3*1000 //kJ/kmol CH4
Cp_CH4 = 36 //kJ/lmolK
Cp_O2 = 29.5 //kJ/lmolK
Cp_N2 = 29.2 //kJ/lmolK
Cp_CO2 = 37 //kJ/lmolK
Cp_H2O = 33.7 //kJ/lmolK
tA = 30 //°C
tX = 25 //°C
tY = tX //°C
tB = 120 //°C
//Solution
Q_AB = (1*Cp_CO2 + 0.2*Cp_O2 + 8.272*Cp_N2 + 2*Cp_H2O)*(tB-tX)+ delta_H + (1*Cp_CH4 + 2.2*Cp_O2 +8.272*Cp_N2)*(tY-tA)
printf("The heat transfer from the combustor = %.1f kJ/kg CH4 ",Q_AB/16)
