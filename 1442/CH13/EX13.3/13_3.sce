clc
//initialisation of variables
hfg= 2406.7 //kJ/kg
Psat40= 7.384 //kPa
R= 8.314 //J/mol K
T= 40 //C
T1= 50 //C
M= 18 //kg
//CALCULATIONS
Psat50= Psat40*%e^((hfg*M/R)*((1/(273.15+T))-(1/(273.15+T1))))
//RESULTS
printf (' Saturation pressure= %.3f kPa',Psat50)
