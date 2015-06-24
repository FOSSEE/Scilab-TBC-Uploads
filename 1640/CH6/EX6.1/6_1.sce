clc 
//initialisation of variables
i= 0.000146
v= 2.8 //ft/sec
m= 7 //ft
//CALCULAIONS
C= v/sqrt(m*i)
K= (157.6-C)*sqrt(m)/C
//RESULTS
printf ('K = %.3f  ',K)
