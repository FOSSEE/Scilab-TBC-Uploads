clc
//initialisation of variables
m= 0.3 //kg
R= 8.314 //J/mol K
M= 28 //gms
T1= 500 //C
p1= 500 //kPa
k= 1.4
V3= 0.3 //m^2
//CALCULATIONS
V1= m*R*(273.15+T1)/(M*p1)
T3= k*(273.15+T1)
p3= m*R*T3*100/(M*V)
//RESULTS
printf (' final pressure = %.1f kPa',p3)
