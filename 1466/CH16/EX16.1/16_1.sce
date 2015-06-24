
clc
//initialisation of variables
g=32.2//ft/sec^2
p=62.4/g
b=1//ft
v=10//ft/sec
d=1/4
l=8//ft
//CALCULATIONS
drag=4*p*b*v*v*d/15
kd=drag/(p*b*l*v*v)
//RESULTS
printf ('\n drag= %.2f lb',drag)
printf ('\n kd= %.5f ',kd)
