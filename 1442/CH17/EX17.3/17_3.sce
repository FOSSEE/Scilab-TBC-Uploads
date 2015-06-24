clc
//initialisation of variables
p0= 10 //Mpa
R= 8.314 //J/mol K
T= 30 //C
va= 0.02 //m^3/kmol
xa= 0.98
//CALCULATIONS
p= p0+(R*(273.15+T)*log(xa)/(va*1000))
//RESULTS
printf (' Pressure of the phase of pure A= %.2f Mpa',p)
