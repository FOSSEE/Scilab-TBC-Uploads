clc
//initialisation of variables
R= 8.314 //J/mol K
T= 400 //C
M= 18.015 //kg/s
p2= 30 //Mpa
p1= 5 //Mpa
f2= 17.7
f1=4.85
s1= 6.6459 //kJ/kg K
s2= 4.4728 //kJ/kg K
h1= 3195.7 //kJ/kg
h2= 2151.1 //kJ/kg
//CALCULATIONS
W= -R*(273.15+T)*log(p2/p1)/M
W1= -R*(273.15+T)*log(f2/f1)/M
W2= h1-h2-(273.15+T)*(s1-s2)
//RESULTS
printf (' Work of compression= %.1f kJ/kg',W)
printf (' \n Work of reversible isothermal process= %.1f kJ/kg',W1)
printf (' \n Work = %.1f kJ/kg',W2)
