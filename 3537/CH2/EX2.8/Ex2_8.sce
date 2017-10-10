//Example 2_8
clc();
clear;
//To find wave length and maximum grating
theta1=10 //units in degrees
d=5*10^-9    //units in cm
dtheta=3   //units in degrees
lamda=(sin(theta1*%pi/180)*d)/(cos(theta1*%pi/180)*(dtheta/3600)*(%pi/180))
lamda1=lamda+d
lamda1=lamda1*10^8
d=d*10^8
n=lamda1/(d*2)
k=2
Ne=(n*k*lamda)/(sin(theta1*%pi/180))
printf("wave length is lamda=%.7f meters",lamda)
printf("\nMaximum grating require Ne=%.2f cm",Ne)
