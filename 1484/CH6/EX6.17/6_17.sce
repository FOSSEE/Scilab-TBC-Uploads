clc 
//initialisation of variables
f= 0.008
l= 2000 //ft
p1= 34 //ft
p2= 8 //ft
p3= 4 //ft
g= 32.2 //ft/sec^2
d= 18 //in
P= 140 //ft
l1= 9500 //ft
//CALCULATIONS
v= sqrt((p1-p2-p3)*2*g/((d/12)+(4*f*l/(d/12))))
Q= %pi*(d/12)^2*v/4
v1= sqrt(P*2*g/((d/12)+(4*f*l1/(d/12))))
Q1= %pi*(d/12)^2*v1/4
//RESULTS
printf ('Quantity discharge= %.f cuses',Q) 
printf ('\n Quantity discharge= %.2f cuses',Q1) 
