clc
//initialisation of variables
m= 20000 //kg/h
T1= 42 //C
T2= 22 //C
J= 4.186 //cal
h1= 54 //kJ/kg
h2= 94.8 //kJ/kg
w1= 0.0105 //kg/h kg
w2= 0.0244 //kg/h kg
//CALCULATIONS
ma= m*(T1-T2)*J/((h2-h1-J*T2*(w2-w1)))
mw= ma*(w2-w1)
m4= m-mw
//RESULTS
printf (' air mass flow rate= %.1f kg/hr',ma)
printf (' \n amount of water to be added= %.f kg/hr',m4)
