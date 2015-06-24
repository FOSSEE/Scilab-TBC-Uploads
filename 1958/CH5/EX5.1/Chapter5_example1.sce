clc
clear
//Input data
m=1//Mass of torsional pendulum in kg
R=0.06//Radius of torsional pendulum in m
l=1.2//Length of the wire in m
r=0.0008//Radius of wire in m
S=(9*10^9)//Modulus of rigidity of the material in N/m^2

//Calculations
I=(1/2)*m*R^2//Moment of inertia in kg.m^2
C=(3.14*S*r^4)/(2*l)//Couple per unit twist in N.m
T=2*3.14*sqrt(I/C)//Period of pendulum in s

//Output
printf('Period of pendulum is %3.1f s',T)
