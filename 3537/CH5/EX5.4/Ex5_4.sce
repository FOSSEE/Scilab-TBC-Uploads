//Example 5_4
clc();
clear;
//To determine the interplanar spacing 
r=1.278*10^-10   //units in meters
a=(4*r)/sqrt(2)      //units in meters
h=1
k=1
l=1
d111=a/sqrt(h^2+k^2+l^2)     //units in meters
printf("Inter planar spacing d111=")
disp(d111)
printf("meters")
