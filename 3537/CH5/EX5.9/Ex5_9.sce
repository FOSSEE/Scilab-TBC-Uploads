//Example 5_9
clc();
clear;
//To calculate the glancing angle
theta1=8.58  //units in degrees
n1=3
lamda1=0.842  //units in A
n2=3
lamda2=0.842  //units in A
sintheta3=(sin(theta1*%pi/180)*n1*lamda1)/(n2*lamda2)
theta3=asin(sintheta3)*180/%pi*3
printf("The Glancing angle is Theta3=%.2f degrees",theta3)


