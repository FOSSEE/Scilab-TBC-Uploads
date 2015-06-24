clc
clear
//Input data
l=0.95//Length of the strring in m
m=0.15//Mass of the bob in kg
r=0.25//Radius of the circle in m

//Calculations
h=sqrt(l^2-r^2)//Height of the pendulum in m
t=2*3.14*sqrt(h/9.8)//Period of rotation in s

//Output
printf('The period of rotation is %3.4f s',t)
