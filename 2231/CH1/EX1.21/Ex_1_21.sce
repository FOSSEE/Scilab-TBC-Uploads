//Example 1_21
clc;
clear;close;

//Given data: 
l=0.2;//m
w=0.01;//m
d=0.01;//m
P=3;//W
Tc=220;//W/m/degreeC
T1=30;//degreeC
theta=l/Tc/w/d;//degreeC/W
T2=P*theta+T1;//degreeC
disp(T2,"Temperature of the surface in degree C ");
