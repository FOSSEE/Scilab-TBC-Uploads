clc
//initialisation of variables
m1= 0.03 //kg
R= 8.314 //J/mol K
T1= 300 //C
p1= 120 //kPa
k= 5/3
M=4 //kg
p2= 600 //kPa
//CALCULATIONS
V= m1*R*(273.15+T1)/(p1*M)
m2= m1*((p2/p1)+k-1)/k
T2= p2*V*M/(m2*R)
//RESULTS
printf (' mass of helium = %.3f kg',m2)
printf (' \n temperature of helium = %.1f K',T2)
