clc
clear
printf("Example 12.8 | Page number 425 \n\n");
//Find actual air and excess air
//Given Data
xCO2 = 9.7 //mole percent CO2
xCO = 1.1 //mole percent CO
xO2 = 4 //mole percent O2
xN2 = 85.2 //mole percent N2

//Solution
//by C balance
b = 2
//by H2 balance
d = 2
//by O2 balance
a = b+d*.5
//by N2 balance
c = 3.76*a

Stoichiometric_air = a*(32+3.76*28)/28 //kg/kg ethylene

//by C balance
x = (xCO2+xCO)/2 //kmol of ehtylene be burnt
//by H2 balance
q = 2*x
//by O2 balance
p = xCO2 + xCO/2 + xO2 + q/2

actual_air = p*(32+3.76*28)/(x*28) //kg/kg ethylene
excess_air = (actual_air - Stoichiometric_air)/Stoichiometric_air*100
printf("Actual air = %.1f kg/kg ethylene \n",actual_air)
printf("Excess air = %.1f%%",excess_air)
