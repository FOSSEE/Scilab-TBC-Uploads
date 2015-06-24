clc
//initialisation of variables
p1= 3 //Mpa
p2= 0.2 //Mpa
V1= 0.6 //m^3
V2= 1 //m^3
M= 28 //gms
R= 8.314 //J/mol K
T= 400 //C
T1= 150 //C
k= 1.4
p3= 1.25 //Mpa
//CALCULATIONS
m1= p1*V1*10^3*M/(R*(273.15+T))
m2= p2*V2*10^3*M/(R*(273.15+T1))
p4= (p1*V1+p2*V2)/(V1+V2)
T2= (p4/p1)^((k-1)/k)*(273.15+T)
m3= p3*V1*M*10^3/(R*T2)
dm= m1-m3
m4= m2+dm
T4= p3*10^3*V2/((R/M)*m4)
S= (R/M)*(m2*((k/(k-1))*log(T4/(273.15+T1))-log(p3/p2))+dm*((k/(k-1))*log(T4/(273.15+T))-log(p3/p1)))
//RESULTS
printf (' final temperature = %.1f K',T2)
printf (' \n final temperature = %.1f K',T4)
printf (' \n total entropy = %.4f KJ/K',S)
