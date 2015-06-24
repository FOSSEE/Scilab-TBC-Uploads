clc
clear
printf("Example 12.6 | Page number 421 \n\n");
//Find the volume fraction and mass fraction
//Given Data
nCO2 = 3.8 //Number of moles of CO2
nN2 = 31.6 //Number of moles of N2
nO2 = 2.2 //Number of moles of O2
nH2O = 4.8 //Number of moles of H2O

//Solution
//Solution
n = nCO2 + nN2 + nO2 + nH2O
xCO2 = nCO2/n //mole fraction of CO2
xN2 = nN2/n //mole fraction of N2
xO2 = nO2/n //mole fraction of O2
xH2O = nH2O/n //mole fraction of H2O

printf("Volume fraction of CO2 = %.1f%%\n",xCO2*100)
printf("Volume fraction of N2 = %.1f%%\n",xN2*100)
printf("Volume fraction of O2 = %.1f%%\n",xO2*100)
printf("Volume fraction of H2O = %.1f%%\n\n",xH2O*100)

M = xCO2*44 + xN2*28 + xO2*32 + xH2O*18 //Mass of combustion product

yCO2 = xCO2*(44/M)
yH2O = xH2O*(18/M)
yN2 = xN2*(28/M)
yO2 = xO2*(32/M)

printf("Mass fraction of CO2 = %.1f%%\n",yCO2*100)
printf("Mass fraction of N2 = %.1f%%\n",yN2*100)
printf("Mass fraction of O2 = %.1f%%\n",yO2*100)
printf("Mass fraction of H2O = %.1f%%\n\n",yH2O*100)
