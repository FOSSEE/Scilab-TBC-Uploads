clear
clc
//initialisation of variables
D1= 7.5 //in
Q1= 850 //gal/min
p1= 62.4 //lb/ft^3
N1= 1800
D2= 15 //in
Q2= 12000 //gal/min
p2= 64 //lb/ft^3
N1= 1800 //r.p.m 
H1= 14 //lb/ft^2
//CALCULATIONS
N2= Q2*N1*(D1)^3/(Q1*D2^3)
P1= p1*H1/144
P2= P1*N2^2*D2^2*p2/(N1^2*p1*D1^2)
//RESULTS
printf ('N2 = %.f r.p.m ',N2+4)
printf ('\n P2 = %.f lb/in^2 ',P2)
