clc 
//initialisation of variables
g= 32.2 //ft/sec^2
d1= 2 //in
d2= 12 //in
r= 1.4
n= 0.905
Q= 2995 //lb/ft^2
w= 0.083 //lb/ft^3
//CALCULATIONS
V1= 1/w
n1= n^((r-1)/r)
n2= n^(2/r)
Q= %pi*(d1/12)^2*sqrt(2*g*Q*(1-n1)*r/((r-1)*n2*(1-(d1/d2)^2)))
//RESULTS
printf ('Volume of air passing through the Venturimeter = %.1f cuses ',Q)
