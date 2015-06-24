clc
//initialisation of variables
m= 2 //kg
dh= 333.39 //kg/h
T= 0 //C
T1= 20 //C
//CALCULATIONS
Q12= m*dh
dS= Q12/(273.15+T)
dSenvir= -Q12/(273.15+T1)
dStotal= dS+dSenvir
//RESULTS
printf (' entropy of ice = %.3f kJ/K',dS)
printf (' \n entropy of environment = %.3f kJ/K',dSenvir)
printf (' \n entropy of universe = %.3f kJ/K',dStotal)
