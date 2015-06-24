clc
//initialisation of variables
m= 10000 //kg/h
P= 2.5 //Mpa
P1= 100 //kPa
v= 0.001003 //m^3
//CALCULATIONS
W= -m*v*(P*10^3-P1)/3600
//RESULTS
printf (' work of the pump = %.3f kW',W)
