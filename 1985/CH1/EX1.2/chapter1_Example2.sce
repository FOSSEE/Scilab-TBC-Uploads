
clc
clear

//INPUT DATA
T=2.223;//Time taken for 1 oscillation in sec
L=1.228;//Length of the pendulum in m

//CALCULATIONS
g=((4*3.14^2*L)/(T^2));//Acceleration due to gravity in m.s^-2

//OUTPUT
mprintf('The acceleration due to gravity is %3.2f m s^-2',g)
