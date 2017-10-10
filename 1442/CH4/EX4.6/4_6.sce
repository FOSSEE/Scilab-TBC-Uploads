clc
//initialisation of variables
T= 296 //K
T1= 250 //K
T2= 300 //K
v= 0.1257 //m^3/kg
v1= 0.11144 //m^3/kg
u1= 27772.6 //kJ/kg
u2= 2679.6 //kJ/kg
h1= 3023.5 //kJ/kg
h2= 2902.5 //kJ/kg
s1= 6.7664 //kJ/kg K
s2= 6.5433 //kJ/kg K
//CALCULATIONS
a1= (T-T1)/(T2-T1)
a2= 1-a1
V= a1*v+a2*v1
U= a1*u1+a2*u2
H= a1*h1+a2*h2
S= a1*s1+a2*s2
//RESULTS
printf ('a2 = %.3f ',a2)
printf ('\n specific volume = %.5f m^3/kg',V)
printf ('\n internal energy = %.1f kJ/kg',U)
printf ('\n enthalpy = %.1f kJ/kg',H)
printf ('\n Entropy = %.1f kJ/kg',S)