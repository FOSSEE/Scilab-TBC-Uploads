clc
//initialisation of variables
h1= 3422.25 //kJ/kg
m= 8 //kg/s
s2= 7.3755 //kJ/kg K
s1= 6.8803 //kJ/kg K
e= 0.8
h2s= 2496.8 //kJ/kg
//CALCULATIONS
h2= h1+e*(h2s-h1)
W= m*(h1-h2)
S= s2-s1
//RESULTS
printf (' \n Enthalpy  = %.1f kW',W)
printf (' \n Entropy = %.4f kJ/kg K',S)
