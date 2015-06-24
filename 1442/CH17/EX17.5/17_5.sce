clc
//initialisation of variables
M1= 18.02 //gms
m1= 0.965 //gms
m2= 0.035 //gms
M2= 58.5 //gms
R= 8.314 //J/mol K
M= 18.02 //kg
T= 20 //C
vf= 0.001002 //m^3
x21= 0.021856 //m^3
//CALCULATIONS
n1= m1/M1
n2= m2/M2
x1= n1/(n1+n2)
x2= n2/(n2+n1)
P= R*(273.15+T)*x2/(M*vf)
P1=  R*(273.15+T)*x21/(M*vf)
//RESULTS
printf (' Osmotic pressure= %.1f kpa',P)
printf (' \n Osmotic pressure= %.1f kpa',P1)
