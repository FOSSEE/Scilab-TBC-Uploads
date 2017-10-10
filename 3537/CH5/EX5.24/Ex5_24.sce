//Example 5_24
clc();
clear;
//To find the interplanar spacing and lamda
n1=3
lamda=97   //units in pm
theta1=23   //units in degrees
theta2=60  //units in degrees
lamda1=(n1*lamda*sin(theta1*%pi/180))/(sin(theta2*%pi/180))  //units in pm
d=(n1*lamda)/(2*sin(theta2*%pi/180))
printf("lamda=%d pm",lamda1)
printf("\n d=%d pm",d)
