clc
//initialisation of variables
m1= 1 //kg
h1= 2967.6 //kJ/kg
h2= 83.96 //kJ/kg
m2= 10
s1= 7.5166 //kJ/kg K
s2= 0.2966 //kJ/kg K
s3= 1.1654 //kJ/kg K
//CALCULATIONS
h3= (m1*h1+m2*h2)/(m1+m2)
S= -m1*s1-m2*s2+(m1+m2)*s3
//RESULTS
printf (' enthalpy = %.1f kJ/kg',h3)
printf (' \n entropy change = %.4f kJ/kg K',S)
