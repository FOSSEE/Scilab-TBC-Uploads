//Example 14.4 // wavelength & angle
clc;
clear;
//given data :
d=2.82;//spacing between successive planes in A
theta=8+35/60;//in degree
theta=theta*%pi/180;// to convert in radian
n=1;// order of reflection
lamda=2*d*sin(theta) /n;//de-broglie equation
disp(lamda,"wavelength of NaCl in A ")
n=2;//to find angleof reflection
theta=asin(n*lamda/(2*d));//angle of reflection radian
theta=theta*180/%pi;// to convert in degree
disp(theta,"angle of reflection in degree")
