
clc
//initialisation of variables
H1= 34 //ft
H2= 8 //ft
H3= 7 //ft
g= 32.2 //ft/sec^2
d= 1.5 //in
//CALCULATIONS
v2= sqrt(2*g*(H1+H2-H3))
Q= v2*%pi*d^2/(4*144)
v3= (2*v2+sqrt(4*v2^2-4*6*(v2^2-H2*2*5*g)))/12
dr= sqrt(v2/v3)
//RESULTS
printf ('ratio of diameteres = %.1f ',dr) 
printf("\n Flow rate = %.3f cusec",Q)
