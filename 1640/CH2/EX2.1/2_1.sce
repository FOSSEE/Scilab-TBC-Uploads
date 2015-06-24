clc 
//initialisation of variables
Q= 0.8 //ft^3/sec
w= 62.4 //lb/sec
d1= 3 //in
d2= 1.5 //in
//CALCULATIONS
Q1= Q*w*60/10
a1= %pi*(d1/12)^2/4
a2= %pi*(d2/12)^2/4
v1= Q/a1
v2= Q/a2
//RESULTS
printf ('v1 = %.1f ft/sec ',v1)
printf ('\n v2 = %.1f ft/sec ',v2)
