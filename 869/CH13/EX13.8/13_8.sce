clc
//initialisation of variables
P= 680 //lb
K= 1000 //lb/in
L= 6 //ft
E= 30*10^6
Ina= 1.728 //in^4
//CALCULATIONS
A= [((L*12)^3/(3*E*Ina)),-(1/K);1,1]
b= [0;P]
c= A\b
Pb= c(1,1)
Ps= c(2,1)
//RESULTS
printf ('Force in the spring= %.2f psi',Ps)
