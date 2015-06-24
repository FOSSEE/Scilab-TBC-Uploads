clc
//initialisation of variables
W= 2000 //kW
m= 2 //kg/s
h1= 3023.5 //kJ/kg
s2= 5.6106 //kJ/kg K
s1= 6.7664 //kJ/kg K
//CALCULATIONS
h2= h1-(W/m)
S=s2-s1
//RESULTS
printf (' enthalpy = %.1f kJ/kg',h2)
printf (' \n entropy change = %.4f kJ/kg K',S)
