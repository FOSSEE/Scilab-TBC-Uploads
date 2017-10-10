//Example 5_34
clc();
clear;
//To find the angle at which it occurs 
n=3
lemda=0.79*10^-10                       //units in meters
d=3.04*10^-10                          //units in meters
theta=asin((n*lemda)/(2*d))*180/%pi
printf("The angle at which it occurs is %.3f degrees",theta)
