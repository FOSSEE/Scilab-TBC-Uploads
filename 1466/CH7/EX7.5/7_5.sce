

clc
//initialisation of variables
f=0.01
l=2640
d1=0.5*16
d2=0.25
k1=0.03125
h=100//ft
pi=22/7
g=32.2
//CALCULATIONS
k2=(4*f*l)/(d1)
k3=(4*f*l)/(d2)
//results
k=k1+k2+k3+0.5+1
v2=sqrt(2*g*h/k)
dis=pi*d2*d2*v2*60*6.24/4
//Results
printf (' Discharge= %.1f gal/min',dis)
