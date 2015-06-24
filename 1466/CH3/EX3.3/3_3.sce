
clc
//initialisation of variables
dp= 6 //in
dt= 3 //in
dm= 13.6 //gm/cc
dw= 1 //gm/cc
g= 32.2 //ft/sec^2
k= 0.97
h= 7 //in
//CALCULATIONS
H= h*(dm-dw)/12
a1= (%pi/4)*(dp/12)^2
a2= (%pi/4)*(dt/12)^2
c= (a1*a2*sqrt(2*g)/sqrt(a1^2-a2^2))
Q= k*c*sqrt(H)
//RESULTS
printf (' discharge through the meter= %.2f ft^3/sec ',Q)
