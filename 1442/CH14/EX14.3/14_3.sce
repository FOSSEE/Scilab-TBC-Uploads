clc
//initialisation of variables
R= 8.314 //J/mol K
T= 400 //C
T1= 500 //C
M= 18.015 //kg/k mol
p1= 30 //Mpa
//CALCULATIONS
v1= R*(273.15+T)/(M*p1*10^3)
v2= R*(273.15+T1)/(M*p1*10^3)
//RESULTS
printf (' volume= %.5f m^3/kg',v1)
printf (' \n volume= %.5f m^3/kg',v2)
