
clc
//initialisation of variables
v0=20//ft/sec
D=12//m
R=D/2
t=0.5
r=1//m
r1=0.5//m
k2=34
g=32.2
pi=22/7
//CALCULATIONS
va=(v0*r*r)/(2*R*t)
k1=k2+(va*va/(2*g))-(v0*v0/(2*g))
H=k2+(va*va/(2*g))
k=(va*va*r1*r1)/(2*g)
p1=(2*pi*62.4*[(H*(r1^2-(1/(D^2))))/2-(k*log(6))])+(D*r*r*pi)
p2=14.7*%pi*R*R
p=p2-p1
//results
printf (' net pressure on plate= %.f lb ',p-2)
