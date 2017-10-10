//Example 18_1
clc();
clear;
//To find the force on the wire
b=2*10^-4      //Units in T
i=20         //Units in A
l=0.3        //Units in meters
theta=53              //Units in degrees
thetaa=sin(theta*%pi/180)      //Units in Radians     
f=b*i*l*thetaa             //Units in N
printf("The force on the wire is F=%.9f N",f)
