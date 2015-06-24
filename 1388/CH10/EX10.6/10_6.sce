clc
//initialisation of variables
t= 25.1 //hr
C= 0.004366 
C1= 0.002192
C2= 0.006649
//CALCULATIONS
r= (C-C1)/(C2-C1)
k= 2.303*log10(1/r)/t
t1= 0.693/k
//RESULTS
printf (' Time= %.1f hr',t1)
