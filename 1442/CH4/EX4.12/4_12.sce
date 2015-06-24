clc
//initialisation of variables
V= 0.2 //m^3
v1= 0.02995 //m^3/kg
u2= 2826.7 //kJ/kg
u1= 2747.7 //kJ/kg
h2= 3092.5 //kJ/kg
h1= 2987.3 //kJ/kg
p= 4 //Mpa
v2= 0.06645 //m^3/kg
v1= 0.02995 //m^3/kg
//CALCULATIONS
m= V/v1
U= m*(u2-u1)
H= m*(h2-h1)
W= m*p*10^3*(v2-v1)
Q= U+W
//RESULTS
printf (' work = %.1f kJ',W) 
printf ('\n heat interaction = %.1f kJ',Q) 
