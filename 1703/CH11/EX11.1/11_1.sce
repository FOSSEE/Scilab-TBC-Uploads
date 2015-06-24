
clc
//initialisation of variables
h= 75 //ft
e= 0.75
k= 0.01
Q= 3000 //gal/min
k1= 1.2
N= 1500
g= 32.2 //ft/sec^2
D= 0.836 //ft
//CALCULATIONS
W= h/e
v1= sqrt((W-h)/k)
Q1= Q/374.06
f1= Q1/(k1*D^2)
u1= %pi*D*N/60
w1= W*g/u1
B= atand(f1/(u1-w1))
//RESULTS
printf ('Diameter of impeller = %.3f ft ',D)
printf ('\n Blade angle at outlet edge of impeller = %.f degrees ',B)
