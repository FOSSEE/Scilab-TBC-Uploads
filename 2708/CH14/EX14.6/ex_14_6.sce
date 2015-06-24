//Example 14.6 // spacing d
clc;
clear;
// 1st part
theta=5+28/60;// given glancing angle in degree
n=1;//order of reflections
lamda=.586;// wavelength in A
theta=theta*%pi/180;//to convert in degree
d=n*lamda/(2*sin(theta));// spacing
disp(d,"spacing in A")
// in question there is a mistake 
// 2nd part
theta=12+1/60;// given glancing angle in degree
n=2;//order of reflections
theta=theta*%pi/180;//to convert in degree
d=n*lamda/(2*sin(theta));// spacing
disp(d,"spacing in A")
//3rd part
theta=18+12/60;// given glancing angle in degree
n=3;//order of reflections
theta=theta*%pi/180;//to convert in degree
d=n*lamda/(2*sin(theta));// spacing
disp(d,"spacing in A")

//The glancing angle is taken differently in the solution
