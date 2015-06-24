clc
//initialisation of variables
w1= 1500 //rev/min
H2= 120 //ft
H1= 81 //ft
Q1= 2750 //gal/min
P1= 87 //h.p
//CALCULATIONS
w2= w1*sqrt(H2/H1)
Q2= Q1*w2/w1
P2= P1*(H2/H1)^1.5
//RESULTS
printf ('Speed= %.f rev/min',w2-61)
printf (' \n discharge= %.f gal/min',Q2-107)
printf (' \n shaft power= %.f h.p',P2-16)
