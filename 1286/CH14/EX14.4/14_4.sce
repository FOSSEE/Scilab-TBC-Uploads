clc
//initialisation
t1=500//k
t2=300//k
m=10//kg
s=100//cal/kg/k
r=0.07//m
//CALCULATIONS
a=4*3.14*r*r
E=a*((t1*t1*t1*t1)-(t2*t2*t2*t2))
r=E/(m*s)
//results
printf(' \n maximum rate at which temperature will fall= % 1f c/sec',E)
