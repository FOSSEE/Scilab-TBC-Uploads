//Example 14.7 // glancing  angle
clc;
clear;
//given data :
// 1st part
lamda=1.549;// wavelength in A
d=4.255;// in ter planer spacing in A
n=1;//order of reflection
theta=asin(n*lamda/(2*d));// glacing angle in radian
theta=theta*180/%pi;// to convert in degree
disp(theta,"glancing angle in degree") 
// 2nd part
n=2;//order of reflection
theta=asin(n*lamda/(2*d));// glacing angle in radian
theta=theta*180/%pi;// to convert in degree
disp(theta,"glancing angle in degree") 
