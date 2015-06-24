//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 6.6w
//calculation of the values of coefficient of static and kinetic friction

//given data
M=2.5//mass(in kg) of the block
F=15//horizontal force(in N)
g=10//gravitational acceleration(in m/s^2) of the earth
x=10//displacement(in m) of the block
t=5//time(in s) required by the block

//calculation
mus=F/(M*g)
a=(2*x)/(t*t)//acceleration of the block from equation of uniform linear motion
//F-muk*M*g=M*a.....newton's second law
muk=(F-(M*a))/(M*g)

printf('the coefficient of static friction between the block and the surface is %3.2f',mus)
printf('\n the coefficient of kinetic friction between the block and the surface is %3.2f',muk)

