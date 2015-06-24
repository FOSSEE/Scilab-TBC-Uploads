clc
//initialisation of variables
T= 25 //C
hfT= -241820 //kJ/kmol
R= 8.314 //J/mol K
k= 1.4
cpH2O= 4.45
cpO2= 3.5
T1= 1000 //C
//CALCULATIONS
S= (cpH2O-k*cpO2)
hfT1= hfT+S*(T1-T)
//RESULTS
printf (' enthalpy formation= %.f kJ/kmol ',hfT1)
