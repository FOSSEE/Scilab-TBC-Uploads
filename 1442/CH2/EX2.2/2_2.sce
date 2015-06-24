clc
//initialisation of variables
n= 0.25 // k mol
M= 32 //kg/kmol
V= 0.5 //m^3
//CALCULATIONS
m= n*M
d= m/V
v= 1/d
v1= V/n
//RESULTS
printf ('mass of oxygen = %.f kg',m)
printf ('\n density of oxygen = %.f kg/m^3',d)
printf ('\n specific volume = %.4f kg/m^3',v)
printf ('\n molar specific volume = %.f m^3/kmol',v1)
