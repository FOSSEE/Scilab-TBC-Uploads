clc
//initialisation of variables
M= 30.04 //kg/kmol
R= 8.3143 //J/mol K
p= 100 //kPa
V= 0.2 //m^3
T= 25 //C
//CALCULATIONS
R1= R/M
m= p*V/(R1*(273.15+T))
//RESULTS
printf (' average value of R= %.4f kJ/kg K',R1)
printf (' \n mass= %.3f kg',m)
