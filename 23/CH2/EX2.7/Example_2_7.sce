clear;
clc;

//Example 2.7
//Caption : Program to find the Enegy Changes in the Process

//Given values
P=7;//pressure=7bar
m=45;//Mass of cube
mt=23;//mass of piston,piston rod,pan
x=0.5;//Distance moved=0.5m
g=9.8;//Acceleration Due to gravity(m/s^2)

//Solution 

//Acc to Eqn del_U_sys+del_U_surr+del_PE_surr=0
del_PE_surr=(m+mt)*g*x;
//ans=del_U_sys+del_U_surr
disp('J',-del_PE_surr,'Energy Changes in the Process')

//End