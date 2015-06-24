clc
//initialisation of variables
m= 0.1 //kg
p= 3 //bar
p1= 10 //bar
h1= 2964.3 //kJ/kg
v1=0.2378
s2= 7.1619 //kJ/k
s1= 6.9641 //kJ/k
//CALCULATIONS
h2= h1+(p-p1)*10^5*v1*10^-3
S= m*(s2-s1)
//RESULTS
printf (' enthalpy = %.1f kJ/kg',h2)
printf (' \n change in entropy = %.5f kJ/K',S)
