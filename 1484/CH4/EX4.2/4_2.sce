

clc 
//initialisation of variables
M= 1.65 //lbs
Q= 20 //gallons per min
d= 1 //in
h= 4 //ft
t= 60 //sec
g= 32.2 //ft/sec^2
Q1= 6.24 //gallons per min
c= 0.36
//CALCULATIONS
v= M*g*t/(Q*10)
V= sqrt(2*g*h)
Cv= (v/V)-0.02
vf= V*%pi*(d/12)^2*60*Q1/4
Cd= Q/vf
Cc= Cd/Cv+c
Cr= (1/Cv^2)-1
//RESULTS
printf ('velocity of jet = %.2f ft/sec',v)
printf ('\n theatrical velocity of jet = %.2f ft/sec',V)
printf ('\n Cv = %.2f ',Cv)
printf ('\n volume flow = %.2f gallons per minute',vf)
printf ('\n Cd = %.2f ',Cd)
printf ('\n Cc = %.2f ',Cc)
printf ('\n Coefficient of resistance = %.2f ',Cr)
