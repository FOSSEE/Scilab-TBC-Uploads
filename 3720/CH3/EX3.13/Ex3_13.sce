// Example 3_13
clc;clear;funcprot(0);
// Given values
h_0=0.5;// m
Z_R=0.6;// m
g=9.81;// m/s^2
R=0.1;// m
//Calculation
omega=sqrt((4*g*(Z_R-h_0))/R^2);// rad/s
printf('The maximum rotational speed of the container,omega=%0.1f rad/s \n',omega);
n=(omega/(2*%pi))*60;// rpm
printf('The rotational speed of the container expressed in terms of rpm,n=%0.0f rpm\n',n);
