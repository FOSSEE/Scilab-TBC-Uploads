clc
//initialisation of variables
p1= 2 //Mpa
V1= 0.2 //m^3
R= 8.314 //J/mol K
T1= 500 //C
M= 28 //gms
p2= 0.3 //Mpa
T2= 250 //C
k= 1.4
A= 0.1 //m^2
//CALCULATIONS
m1= p1*10^3*V1*M/(R*(273.15+T1))
m2= p2*10^3*V1*M/(R*(273.15+T2))
m3= -(m2-m1)
T3= (m1*(273.15+T1)-m2*(273.15+T2))/(k*m3)
z3= m3*R*T3/(p2*10^3*A*M)
//RESULTS
printf (' mass of nitrogen = %.4f kg',m3)
printf (' \n final temperature = %.1f K',T3)
printf (' \n piston rise = %.2f m',z3)
