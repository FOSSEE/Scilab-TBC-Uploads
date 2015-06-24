clc
//initialisation of variables
m= 5 //kg
h= 10 //m
gc= 1.0 //kg m/N s^2
//CALCULATIONS
v2= 2*h*gc*9.8
KE= (m*v2)/(2*gc)
PE= (m*gc*9.8*h)/(gc)
//RESULTS
printf ('KE= %.f J',KE)
printf (' \n PE= %.f J',PE)
