clc
//initialisation of variables
h=0.08//lb
p=60//lb/in^2
p1=0.50//lb/in^2
v=0.5//ft^3
v1=7.17//ft^3
V=h*v1//ft^3
//CALCULATIONS
W=p1/v1//lb
I=v/v1//lb
M=h-I//lb
//RESULTS
printf('the dryness of the steam at this pressure and missing quantity =% f lb',M)
