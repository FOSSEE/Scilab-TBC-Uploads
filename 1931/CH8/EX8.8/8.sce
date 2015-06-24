clc
clear
//INPUT DATA
x=4//Total energy increase to 4 times of its initial rest energy
c=3*10^8//velocity of light in m/sec
//CALCULATION
v=sqrt(c^2*(1-(1/x^2)))/10^8//The Velocity of moving electron in m/sec*10^8

//OUTPUT
printf('The Velocity of moving electron is %3.4f*10^8 m/sec',v)
