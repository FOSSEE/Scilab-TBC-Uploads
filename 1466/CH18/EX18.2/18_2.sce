
clc
//initialisation of variables
p1=200//lb/in^2
p2=120//lb/in^2
f=0.0025
l=100//ft
T1=600
d=0.5
g=32.2//ft/sec^2
po=0.77//lb/ft^3
mvi=0.412*10^-6
f1=0.00185
//CALCULATION
k=f*l/d
k1=p1/p2
v1=19.5*sqrt(T1)
T2=0.9513*T1
r=k1*0.9513
v2=r*v1
mv=(v1+v2)/2
mt=(T1+T2)/2
mp=(p1+p2)/2
Re=po*mv*d/(g*mvi)
k2=(f1*l)/d
nv1=21.4*sqrt(T1)
T2=0.944*T1
r=k1*0.944
nv2=nv1*r
W=0.95*%pi*d*d*nv1/4
//RESULTS
printf ('\n Discharge= %.1f lb/sec',W)
