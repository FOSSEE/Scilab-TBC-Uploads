clc
//initialisation of variables
E= 30*10^6
syp= 30000 //psi
I= 143.5 //in^4
A= 7.32 //in
//CALCULATIONS
I1= 2*I
A1= 2*A
L= sqrt(2*%pi^2*E*I1/(syp*A1))
//RESULTS
printf ('Critical length of the column= %.2f in',L)
