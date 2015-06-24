clc 
//initialisation of variables
Q= 1100 //cuses
i= 1/1800
C= 95
n= 1.5
//CALCULATIONS
d= ((Q*sqrt(3600)/C)/(n+0.6))^0.4
b= 0.6*d
ht= b+2*(n*d)
//RESULTS
printf ('Depth = %.2f ft ',d)
printf ('\n Bottom width = %.2f ft ',b)
printf ('\n Top width = %.2f ft ',ht)
