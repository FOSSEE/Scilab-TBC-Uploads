
clc
clear
//Input data
P=4000//Power in kW
N=400//Speed in r.p.m
h=200//Head in m
e=90//Efficiency in percent
d=1.5//Diameter in m
vd=10//Percentage decrease in velocity
a=165//Angle with which jet is deflected in degrees

//Calculations
V1=sqrt(2*9.81*h*(e/100))//Velocity in m/s
Vb=(3.14*d*N)/60//Velocity in m/s
nn=((2*(1-((e/100)*cosd(a)))*(V1-Vb)*Vb)/V1^2)*100//Efficiency in percent
p=(P/(nn/100))//Power developed in kW
pj=(p/2)//Power developed per jet in kW
dx=sqrt((pj*8)/(3.14*V1^3))//Diameter of each jet in m

//Output
printf('(a) the efficiency of the runner is %3.2f percent \n (b) the diameter of each jet is %3.4f m',nn,dx)
