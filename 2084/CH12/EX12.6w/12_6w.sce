//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.6w
//calculation of the maximum speed of the block and the speed when the spring is stretched 

//given data
nu=10//frequency(in s^-1) of oscillation
l=.20*10^-2//stretch(in m) of the spring
g=%pi^2//gravitational acceleration(in m/s^2) of the earth

//calculation
//Amplitude................A = m*g/k..............(1)
//angular frequency.......w=sqrt(k/m).............(2)
//from above equations,we get
w=2*%pi*nu//angular frequency
A=((1/w)^2)*g
vmax=A*w//maximum speed
x=A-l//displacement(in m) from mean position
v=w*(sqrt(A^2-x^2))

printf('the maximum speed of the block is %3.2f cm/s',vmax*10^2)
printf('\nthe speed when the spring is stretched by 0.20 cm is %3.1f cm/s',v*10^2)
