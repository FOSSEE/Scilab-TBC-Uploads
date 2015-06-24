clc
clear
//Input data
v=0.9//Velocity of the particle is 0.9c

//Calculations
x=1/sqrt(1-v^2)//x value for obtaining mass
E=(x-1)//E value for obtaining energy 

//Output
printf('The relativistic mass of the particle is %3.3f mo \n The kinetic energy of the particle is %3.3f mo.c^2',x,E)
