//Example 5_9_u1
clc();
clear;
//To determine the interplanar spacing
h=6.63*10^-34      //Plancks Constant
m=9.1*10^-31
e=1.6*10^-19
v=844
lamda=h/sqrt(2*m*e*v)            //units in mts
n=1
theta=58      //units in degrees
d=(n*lamda)/(2*sin(theta*(%pi/180)))           //units in mts
printf("The interplanar spacing d=")
disp(d)
printf("mts")
