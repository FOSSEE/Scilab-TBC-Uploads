clc
//initialisation of variables
v= 5*10^-6 //gmsec/m^2
g= 32.2 //ft/sec^2
g1= 981 //gm/cm^2
//CALCULATIONS
v1= v*2.2*30.5^2/1000
v2= v1*g
v3= v*g1*100
//RESULTS
printf (' viscosity in lbf sec/ft^2= %.2e lbf sec/ft^2 ',v1)
printf (' \n viscosity in lb/ft sec = %.2e lb/ft sec ',v2)
printf (' \n viscosity in centi-poise = %.3f centi-poise ',v3)
