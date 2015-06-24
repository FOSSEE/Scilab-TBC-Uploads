clc
//initialisation of variables
d= 1 //in
P= 100 //psi
C= 1
T= 70 //F
s= 0.07494 //lb/ft^3
//CALCULATIONS
Qw= (0.5303*%pi*d^2*(P+14.7))/(4*sqrt(T+460))
Qv= Qw*60/s
//RESULTS
printf ('Amount of air passing thorugh orifice = %.1f cfm',Qv)
