//Example 7_20
clc();
clear;
//To calculate the angle of refraction theta1 at the interface
n1=1.55
n2=1.6
theta2=60                       //units in degrees
theta1=asin((n1*sin(theta2*%pi/180))/n2)*180/%pi
printf("The angle of refraction is %.2f degrees",theta1)
