//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
//mass moment of inertia, kinetic enrgy and shear blades
clc
//initialisation of variables
w=2//tonf
t=250//rev/min
g=32.2//ft
h=2240//ft
f=0.8//percent
t1=60//ft
s=1*(2/3)//min
r=480//ft
w1=20//ft
//CALCULATIONS
M=(w*h*(w^2))/g//slug ft^2
A=(t*(w*%pi/t1))/t1*s//rad/s^2
I=M*A//lbf ft
K=1/2*(M)*(2*%pi/t1)^2*r*w1//ft lbf
F=f*K/(3/12)//lbf
//RESULTS
printf('the mass moment of inertia =% f lbf ft',I)
printf('the kinetic energy=% f ft lbf',K)
printf('the average force on the shear blades=% f lbf',F)
