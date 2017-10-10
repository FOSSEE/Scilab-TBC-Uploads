//Example 5_6
clc();
clear;
//To calculate the interplanar spacing and wavelength
n1=1
theta1=23          //units in degrees
n2=3
theta2=60          //units in degrees
lamda1=97           //units in pm
lamda2=(n2*lamda1*sin(theta1*(%pi/180)))/(sin(theta2*(%pi/180)))          //units in pm
d=(n2*lamda1)/(2*sin(theta2*(%pi/180)))       //units in pm
printf("Wavelength lamda=%dpm \n Interplanar spacing d=%dpm",lamda2,d)
