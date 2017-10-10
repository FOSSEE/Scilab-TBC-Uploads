//Initialisation of variables
clc
e=1.603e-20//electron volts
t=6.6e-9
m=9.11e-28//mass of electron
V=500e8//e.m.u
d=5//cm
X=V/d//e.m.u per cm
f=X*e//force on electron
a=f/m//acceleration of electron
v=a*t//velocity of electron
dist=.5*a*t^2//distance travelled
printf('velocity of electron is %e cm per s \n',v)
printf('distance travelled is %d cms \n',dist)




