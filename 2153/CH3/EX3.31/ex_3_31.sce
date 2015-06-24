//Example 3.31 : interplanar spacing
clc;
clear;
close;
//given data :
format('v',5)
theta=20.3;//in degree
lamda=1.54;// in angstrum
n=1;
a=sind(theta)
d=lamda/(2*a);
disp(d,"interplanar spacing,d(angstrom) = ")
