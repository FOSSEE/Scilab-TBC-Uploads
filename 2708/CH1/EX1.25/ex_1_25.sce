//Example 1.25 // diameter of bright ring
clc;
clear;
//given data :
w=6D-7;// wavelength used in m
R1=3;//radius of curvature of convex lens in m
R2=4;//radius of curvature of concave lens in m
n=13;// order of ring
r=sqrt((2*n-1)*w/(2*(1/R1-1/R2)));// radius of ring
disp(2*r,"diameter of bright ring in m")


