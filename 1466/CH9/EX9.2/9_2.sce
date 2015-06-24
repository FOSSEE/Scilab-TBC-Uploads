
clc
//initialisation of variables
w=64//lb/ft^3
g=32.2//ft/sec^2
s=10//mph
l=100//ft
r=1/8//in
cf=0.0047
A=1600//ft^2
v1=27*10^-6//engineer units
//CALCULATIONS
v=s*5280/3600
p=w/g
k1=l*12/r
Re=p*v*l/(v1)
R=cf*p*A*v*v/2
fhp=R*v/550
//RESULTS
printf ('Frictional horse power= %.f',fhp)
