clc
//initialisation of variables
psat= 143.3 //kPa
R= 8.314 //J/mol K
T= 110 //C
m= 18.02 //gms
pv= 150 //kPa
v= 0.001052 //m^3/kg
s= 10^-3
//CALCULATIONS
PL= psat+((R*(273.15+T)/(m*0.0010502))*log(pv/psat))
D= (4*s/(PL-pv))*(75.64-13.91*(T/100)-3*(T/100)^2)*10^3
//RESULTS
printf (' equilibrium pressure= %.f kPa',PL-13)
printf (' \n diameter of droplet= %.4f mm',D)
