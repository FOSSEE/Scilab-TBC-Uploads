//Example 2.16 //position of brightest spot
clc;
clear;
//given data
d=.2;// diameter of ring 
n=1;//order of ring 
w=5D-5;//wavelength used in cm
r=d/2;// radius of ring
f=(r^2)/(w*n);//position of brightest spot 
disp(f,"position of brightest spot in cm")
