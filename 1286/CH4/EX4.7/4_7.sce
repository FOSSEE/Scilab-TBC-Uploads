clc
//initialisation
p1=75.5//cm
v1=123//cc
t0=273//k
t1=15//c
T1=t0+t1
p0=76//cm
r=1.43//gm/litre
l=51//cal/gm
t2=-183//c
m=0.495//gm
//calculations
v0=p1*v1*t0/(p0*T1)
h=r*v0*l/1000
c=(h/(m*(t1-t2)))
//results
printf(' mean specific heat = % 1f calC/gm/deg',c)
