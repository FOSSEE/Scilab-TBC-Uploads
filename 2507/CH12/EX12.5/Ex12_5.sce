clc
clear
printf("Example 12.5 | Page number 420 \n\n");
//Find the Orsat analysis of the combustion products
//Given Data
nCO2 = 3.8 //Number of moles of CO2
nN2 = 31.6 //Number of moles of N2
nO2 = 2.2 //Number of moles of O2

//Solution
n = nCO2 + nN2 + nO2
xCO2 = nCO2/n //mole fraction of CO2
xN2 = nN2/n //mole fraction of N2
xO2 = nO2/n //mole fraction of O2

printf("xCO2 = %.1f %% \n",xCO2*100)
printf("xN2 = %.1f %% \n",xN2*100)
printf("xO2 = %.1f %% \n",xO2*100)
