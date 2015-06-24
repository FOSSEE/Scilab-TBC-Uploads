
clc
//initialisation of variables
h=50//ft
wg=0.045//lb/ft^3
wa=0.08//lb/ft^3
k1=0.333
k2=0.0834
k3=62.4
f=0.008
l=300//ft
d=0.5
g=32.2
pi=22/7
//CALCULATIONS
j=(h*wa/wg)-h+((k1-k2)*k3/wg)
j1=1+(4*f*l/d)
v=sqrt(2*g*j/j1)
del=pi*d*d*v*3600/4
//results
printf (' Delivery= %.f ft^3/hr ',del-25)
