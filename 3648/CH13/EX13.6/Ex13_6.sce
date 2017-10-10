//Example 13_6
clc();
clear;
//To find the youngs modulus
lamda=1.85    //Units in meters
f=2700     //units in sec^-1
v=lamda*f      //Units in meters/sec
density=7.86*10^3      //Units in Kg/meter^3
y=v^2*density   //Units in N/meters^2
printf("The youngs modulus is Y=")
disp(y)
printf("N/meters^2")
