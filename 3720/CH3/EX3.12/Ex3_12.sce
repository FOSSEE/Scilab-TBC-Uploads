//Example 3_12
clc;clear;funcprot(0);
// Given values 
dV=90-0;//Change in velocity in km/h
dt=10;// s
b_1=2;// m
b_2=0.6// m;
g=9.81;// m/s^2
a_z=0;// m/s^2

// Calculation
a_x=(dV/dt)/3.6;// The acceleration of the truck in m/s^2
theta=atand(a_x/(g+a_z));// degree
// Case 1:
gradZ_s1=(b_1/2)*tand(theta)*100;// cm
printf('Case 1 :The long side is parallel to the direction of motion:Vertical rise,grad_Zs1=%0.1f cm\n' ,gradZ_s1);
// Case 2:
gradZ_s2=(b_2/2)*tand(theta)*100;// cm
printf('Case 2 :The short side is parallel to the direction of motion:Vertical rise,grad_Zs2=%0.1f cm\n',gradZ_s2);
