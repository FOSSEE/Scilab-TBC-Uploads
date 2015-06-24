clc 
//initialisation of variables
d1= 12 //in
d2= 9 //in
z1= 10 //ft
z2= 10 //ft
p1= 15 //lb/in^2
w= 62.4 //lb/ft^3
Q= 2 //cuses
g= 32.2 //ft/sec^2
//CALCULATIONS
v1= Q/(%pi*(d1/12)^2/4)
v2= Q/(%pi*(d2/12)^2/4)
p2= w*(z1-z2+(p1*144/w)+(v1^2/(2*g))-(v2^2/(2*g)))/144
//RESULTS
printf ('p2 = %.3f lb/in^2 ',p2)
