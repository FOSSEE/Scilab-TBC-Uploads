
clc
clear

//INPUT DATA
l=1.2;//Length of of bar in m

//CALCULATIONS
k=sqrt(l^2/12);//Radius of gyration in m
T=sqrt(((k^2/(l/2))+(l/2))/9.8)*2*3.14;//Time period of the pendulum in s
L=((9.8*T^2)/(4*3.14^2));//Length in m
D=L-(l/2);//Another point where pendulum has same timeperiod in m

//OUTPUT
mprintf('The time period of pendulum is %3.3f s\nDistance of another point from centre of gravity on bar with same time period is %3.1f m',T,D)

