


clc
//initialisation of variables
clear
D=0.25
f=0.01
l=600//ft
H=100//ft
g=32.2//ft/sec^2
pi=22/7
//CALCULATIONS
k=sqrt(8*f*l/D)
d=sqrt(D*D/k)
v=sqrt(H*2*g*D/(3*f*4*l))
v1=v*k
hp=(62.4*pi*d*d*v1^3)/(4*2*g*550)
//RESULTS
printf (' Diameter= %.3f in ',d*12-0.002)
printf ('\n Horsepower= %.3f ',hp-0.018)
