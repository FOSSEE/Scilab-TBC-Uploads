clc
clear
printf("Example 9.9 | Page number 279 \n\n");
//Find molar mass and gas constant and find mass fractions of the constituents.
//Given Data
xCO2 = 0.1 //mole fraction of CO2
xO2 = .09 //mole fraction of O2
xCO = 0.01 //mole fraction of CO
xN2 = 0.8 //mole fraction of N2

//Solution
M = xCO2*44 + xO2*32 + xCO*28 + xN2*28 //kg/kmol //avg. molar mass
R = 8314.3/M //J/kgK //gas constant
yCO2 = xCO2*(44/M) //mass fraction of CO2
yO2 = xO2*(32/M) //mass fraction of O2
yCO = xCO*(28/M) //mass fraction of CO
yN2 = xN2*(28/M) //mass fraction of N2

printf("Molar Mass = %.2f kg/kmol\n",M);
printf("Gas constant = %.1f J/kgK\n",R);
printf("Mass fraction of CO2 = %.4f \n",yCO2);
printf("Mass fraction of O2 = %.4f \n",yO2);
printf("Mass fraction of CO = %.4f \n",yCO);
printf("Mass fraction of N2 = %.4f \n",yN2);
