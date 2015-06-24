clear;
clc;
j=50e2;
r=100e6;
f=60;
p=2;
g=10;
n=120*f/p;
w=2*3.14*n/60;
ke=.5*j*w^2*100;
h=ke/r;
m=g*h/(180*f)
m=round(m*1000)/1000;
mprintf("the value of angulr momentum M=%fMJs/ele.degrees\nthe Inertia Constant H=%dMJ/MVA",m,round(h));
