
clc
//initialisation of variables
g1=1.41
g=32.2//ft/sec^2
T=273//c
R=96
p=14.7//lb/in^2
//CALCULATIONS
w=p*144/(R*T)
po=w/g
v=sqrt(g1*p*144*g/w)
//RESULTS
printf (' velocity of sound in air= %.f ft/sec',v)
