
clc
//initialisation of variables
w=62.4//lb/ft^3
g=32.2//ft/sec^2
b=300000//lb/in^2
//CALCULATIONS
p=w/g
v=sqrt(b*144*g/w)
//RESULTS
printf (' velocity of sound in water= %.f ft/sec',v)
