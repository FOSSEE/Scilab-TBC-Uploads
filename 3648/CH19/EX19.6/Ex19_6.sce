//Example 19_6
clc();
clear;
//To find the emf induced in the rod
b=0.6*10^-4       //Units in T
v=3       //Units in meters/sec
d=5        //Units in meters
theta=53          //Units in degrees
thetaa=cos(theta*%pi/180)        //Units in radians
emf=b*v*d*thetaa      //Units in V
printf("The emf induced in the rod is emf=%.6f V",emf)
