clc
//initialisation
m=96//gm
m1=5//gm
t1=37//c
t2=10//c
l=10//cm
t=4*60//s
a=5//cm^2
dt=24//c
//CALCULATIONS
k=m*(t1-t2)/(a*t*dt)
h1=m1*540
h2=m*(t1-t2)
dh=h1-h2
p=dh*100/h1
//results
printf(' \n thermal conductivity= % 1f cgs units',k)
printf(' \n percentage of heat loss= % 1f ',p)
