//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 5.3w
//calculation of the force exerted by the tree limb on the bullet

//given data
u=250//initial velocity(in m/s) of the bullet
v=0//final velocity(in m/s) of the bullet
x=.05//penetration(in m) by the bullet in the tree limb
m=.01//mass of bullet(in kg)

//calculation
a=((u*u)-(v*v))/(2*x)//formula of horizontal acceleration in case of uniform linear motion
F=m*a;

printf('the force exerted by the tree limb on the bullet is %3.2f N',F)
