
clc
//initialisation of variables
q=40//ft^3/sec
d1=3//ft
g=32.2//ft/sec^2
//CALCULATIONS
d2=-1.5+sqrt((2*q*q/(g*3))+(d1*d1/4))
H=d2-d1
//RESULTS
printf (' height of the wave= %.2f ft',H)
