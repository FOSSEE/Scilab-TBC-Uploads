//Example 5_10
clc();
clear;
//To calculate how large the average frictional force
a=9.8   //units in meters/sec^2
s=4   //units in meters
v=6    //units in meters/sec
m=3   //units on Kg
f=m*((a*s)-(0.5*v^2))/s   //units in Newtons
printf("The average frictional force f=%.1f N",f)
