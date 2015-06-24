
clc
//initialisation of variables
h= 28 //ft
g= 32.2 //ft/sec^2
v1= 45.4 //ft/sec
A= 45 //degrees
Q= 1700 //ft^3/sec
w= 6.24 //lb/ft^3
c= 0.65
a= 60 //ft^2
r1= 10 //in
r2= 5 //in
//CALCULATIONS
V= v1-(Q/(w*a*c*tand(A)))
e= h*g*100/(V*v1)
a1= atand(Q*2/(v1*w*a*c*tand(A)))
w= sqrt(2*g*h*144/(r1^2-r2^2))*30/%pi
//RESULTS
printf ('Efficiency = %.1f per cent',e)
printf ('\n Inlet angle = %.1f degrees',a1)
printf ('\n Least speed of starting = %.f r.p.m',w-2)
