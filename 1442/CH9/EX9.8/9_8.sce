clc
//initialisation of variables
h1= 174.076 //kJ/kg
h3= 74.527 //kJ/kg
h4= 8.854 //kJ/kg
m= 0.8 //kg
e= 0.85
//CALCULATIONS
h2= h1+h3-h4
Q= m*(h2-h1-23)
Q1= e*Q
//RESULTS
printf (' Heat = %.2f kW',Q)
printf (' \n Heat = %.2f kW',Q1)
