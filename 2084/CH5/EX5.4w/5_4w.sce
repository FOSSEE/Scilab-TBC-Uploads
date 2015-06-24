//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 5.4w
//calculation of the position of a particle

//given data
m=.01//mass(in kg) of the particle
Fx=10//component of force(in N) along X axis
Fy=5//component of force(in N) along Y axis
ux=0//x component of initial velocity(in m/s) of the particle
uy=0//y component initial velocity(in m/s) of the paticle
t=5//time(in s) at which position is to be determined

//calculation
ax=Fx/m;
x=(ux*t)+((1/2)*ax*t*t);//formula of horizontal position in case of uniform linear motion
ay=Fy/m;
y=(uy*t)+((1/2)*ay*t*t);//formula of vertical position in case of uniform linear motion

printf('at t=5 s position of the particle is (i%3.2f + j%3.2f)m',x,y)
