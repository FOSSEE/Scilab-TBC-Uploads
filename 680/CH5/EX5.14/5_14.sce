//Problem 5.14:

//initializing the variables:
lbmolCO2 = 7.38
lbmolSO2 = 0.00125
lbmolN2 = 38.03

//calculation:
//total lbmol dry flue gas
tn = lbmolCO2 + lbmolSO2 + lbmolN2
//volume percentage of CO2 in the dry flue gas
perCO2 = lbmolCO2*100/tn

printf("\n\nResult\n\n")
printf("\n volume percentage of CO2 in the dry flue gas = %.2f percent",perCO2)