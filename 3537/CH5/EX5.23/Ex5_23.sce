//Example 5_23
clc();
clear;
//To find the interplanar spacing
n=2
lamda=0.12   //units in nm
theta=28  //units in degrees
d=(n*lamda)/(2*sin(theta*%pi/180))
printf("Interplanar spacong d=%.2f nm",d)
