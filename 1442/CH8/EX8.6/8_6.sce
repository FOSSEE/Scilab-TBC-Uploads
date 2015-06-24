clc
//initialisation of variables
p1= 5 //bar
V1= 0.4 //m^2
V2= 1.2 //m^3
R= 8.314 //J/mol K
M= 28 //gms
T1= 80 //C
//CALCULATIONS
p2= p1*(V1/V2)
S= R*log(V2/V1)/M
S1= S*p1*V1*100/((R/M)*(273.15+T1))
//RESULTS
printf (' final pressure = %.3f bar',p2)
printf (' \n change in entropy = %.4f kJ/kg K',S1)
