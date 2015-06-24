clc
//initialisation of variables
d= 0.856 //g/cc
N= 6*10^23 //molecules
M= 39.1 //g mole^-1
n= 2
n1= 4
n2= 12
//CALCULATIONS
a= (n*M/(N*d))^(1/3)
d= a*10^8/sqrt(n1)
d1= a*10^8/sqrt(n) 
d2= a*10^8/sqrt(n2)
//RESULTS
printf ('distance between planes = %.2f A',d)
printf ('\n distance between planes = %.2f A',d1)
printf ('\n distance between planes = %.2f A',d2)
