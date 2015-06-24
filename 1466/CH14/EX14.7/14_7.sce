
clc
//initialisation of variables
T=288//c abs
d=1/6
f=0.005
l=300//ft
g=32.2//ft/sec^2
R=96
p1=100//lb/in^2
Q=80//ft^3/min
//CALCULATIONS
a=%pi*d*d/(4)
v1=Q/(a*60)
p2=p1*sqrt(1-((8*f*l*v1*v1)/(2*g*d*R*T)))
//RESULTS
printf (' delivery pressure= %.1f lb/in^2',p2)
