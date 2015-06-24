
clc
//initialisation of variables
g=32.2
h=25//ft
f=0.01
d=1//m
d1=12//in
pi=22/7
//CALCULATIONS
 k=(4*f*2000/d)+1
 v=sqrt(2*g*h/k)
 k1=4*f/d
 l1=((d1*2*g)/(v*v))-1
 l=l1/k1
 dis=pi*d*v/4
 //results
 printf (' Discharge through pipe= %.2f ft^3/sec ',dis)
