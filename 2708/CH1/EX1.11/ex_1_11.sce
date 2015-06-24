//Example 1.11 // separation between coherent source  
clc;
clear;
//given data :
u=1.5;//referactive index of bi-prism
al=2*%pi/180;//angle in radian
a=.1;// distance between source & prism in m
d=2*a*(u-1)*al;// distance between slits in m
disp(d,"separation between coherent source in meter")
