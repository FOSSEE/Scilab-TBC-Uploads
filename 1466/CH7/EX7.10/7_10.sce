

clc
//initialisation of variables
clear
p1=750//lb/in^2
p2=680//lb/in^2
f=0.008
k=62.4
l=3000//ft
g=32.2
//CALCULATIONS
h=(p1-p2)*144/k
k1=h*2*g/(4*f*l)
v=(5280)^0.2
d=v*v/k1
//RESULTS
printf (' velocity of supply pipe= %.2f ft/sec ',v)
printf ('\n Diameter of supply  pipe= %.3f ft ',d)
