//Example 1.23 // distance between rings
clc;
clear;
//given data :
R1=100;//radii of curvature in cm
R2=R1;// given
w=5400D-8;// wavelength of light in m
n1=5;// order of ring for case one
r1=sqrt(n1*w/((1/R1)+(1/R2)));//radii of curvature in cm
n2=15;// order of ring for second case
r2=sqrt(n2*w/(1/R1+1/R2));// radii of curvature in cm
d=r2-r1;// distance between rings
disp(d,"distance between rings in cm")

