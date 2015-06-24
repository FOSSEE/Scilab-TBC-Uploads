clc
//initialisation of variables
hfg= 2257.0 //kJ/kg
Tb= 100 //C
R= 8.314 //J/mol K
m2= 10 //gms
M2= 58.5 //gms
m1= 90 //gms
M1= 18 //gms
//CALCULATIONS
x2= (m2/M2)/((m2/M2)+(m1/M1))
dT= R*(273.15+Tb)^2*x2/(M1*hfg)
//RESULTS
printf (' Boiling point elevation= %.3f C',dT)
