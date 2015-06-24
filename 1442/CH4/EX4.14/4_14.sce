clc
//initialisation of variables
p0= 100 //kpa
A= 0.1 //m^2
F= 20 //kN
m3= 0.8873 //kg
m1= 1.1384 //kg
m2= 0.2511 //kg
u1= 3116.2 //kJ/kg
u2= 2728.7 //kJ/kg
v3= 0.9942 //m^3/kg
//CALCULATIONS
pe= (p0+(F/A))/1000
h3= (m1*u1-m2*u2)/m3
z3= m3*v3/A
//RESULTS
printf (' final pressure = %.1f Mpa',pe) 
printf (' \n enthalpy = %.1f kJ/kg',h3) 
printf ('\n piston rise = %.2f m',z3) 
