clc
//initialisation of variables
p0= 100 //kPa
V= 0.12 //m^3
T0= 20 //C
//CALCULATIONS
I= p0*V
dS= I/(273.15+T0)
//RESULTS
printf (' Irreversibility of the process= %.1f kJ',I)
printf (' \n Entropy of the process= %.4f kJ',dS)
