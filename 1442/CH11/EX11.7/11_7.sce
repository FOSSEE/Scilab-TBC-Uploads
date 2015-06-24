clc
//initialisation of variables
h1= 182.07 //kJ/kg
h4= 76.26 //kJ/kg
h2= 217.97 //kJ/kg
Q= 10^6 //kJ/h
Tc= -5 //C
Th= 32 //C
//CALCULATIONS
COP= (h1-h4)/(h2-h1)
W= Q/(COP*3600)
COPcarnot= (273.15+Tc)/(Th-Tc)
//RESULTS
printf (' COP= %.2f  ',COP)
printf (' \n power= %.1f kW ',W)
printf (' \n COP= %.3f  ',COPcarnot)
