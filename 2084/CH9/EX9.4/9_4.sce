//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.4
//calculation of the maximum compression of the string

//given data
m=1//mass(in kg)
v=2//speed of the block(in m/s)
k=50//spring constant(in N/m)

//calculation
V=(m*v)/(m+m)//principle of conservation of linear momentum
ke1=(m*v*v/2)//initial kinetic energy
ke2=(m*V*V/2)+(m*V*V/2)//final kinetic energy
x=sqrt(2*(ke1-ke2)/k)//kinetic energy lost = elastic energy stored

printf('the maximum compression of the string is %3.1f m',x)
