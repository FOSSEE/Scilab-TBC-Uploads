//Example 3.33 : number of per order
clc;
clear;
close;
//given data :
format('v',5)
theta=90;//in degree
lamda=1.54;// in angstrum
a=sind(theta)
d=1.181;
n=(2*d*a)/lamda;
disp(n,"number of order,n = ")
