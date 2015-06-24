clc
//initialisation of variables
m1= 0.03 //kg
v1= 2.1977 //m^3/kg
h2= 3073.8 //kJ/kg
h1= 3061.6 //kJ/kg
p2= 600 //kPa
p1= 120 //kPa
//CALCULATIONS
V=m1*v1
r= ((h2-h1)/v1)+p2-p1
//RESULTS
printf (' volume of container = %.5f m^3',V)
printf (' \n pressure = %.2f kPa',r)
