//Example 2.8 //angular separtion
clc;
clear;
//part a
c=1/5000;//grating element
w1=5890D-8;// in first case first wavelength used in cm
n=2;//order of spectrum
theta=asin((n*w1)/c);//angular separton in radian
theta=theta*180/%pi;//to convert in degree
disp(theta,"angular width in degree")
//part b
w2=5896D-8;// in second case second wavelength used in cm
n=2;//order of spectrum
theta1=asin((n*w2)/c);//angular separton in radian
theta1=theta1*180/%pi;//to convert in degree
disp(theta1,"angular width in degree")
a=theta1-theta;//angular separation in degree
disp(a,"angular separation in degree")
//part c
w=5893D-8;// mid wavelength
dw=w2-w1;// change in wavelength
n=2;//order of spectrum
N=w/(dw*n);//no. of lines in grating
N=floor(N);//N should be integer
disp(N,"no. of lines in grating")

