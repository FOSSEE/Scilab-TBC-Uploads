clc
//initialisation of variables
m= 0.45 //kg
v1= 0.03 //m^3
v2= 0.06 //m^3
P= 6.9*10^5 //Pa
K= 1.4
R= 287.1 //J/Kg K
//CALCULATIONS
T1= (P*v1)/(m*R)
T2= T1
P2= P*v1/v2 
T3= T2*(v2/v1)^(K-1)
P3= P2*(v2/v1)^K
//RESULTS
printf ('T1 = %.f K ',T1)
printf (' \n T2= %.f K',T2)
printf (' \n T3= %.f K',T3)
printf (' \n P2= %.2e Pa',P2)
printf (' \n P3= %.2e Pa',P3)
