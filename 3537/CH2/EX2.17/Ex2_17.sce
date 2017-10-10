//Example 2_17
clc();
clear;
//To find the slit width
theta=15                       //units in degrees
lemda=6500                    //units in angstrom
lemda=6500*10^-8
n=1
a=(n*lemda)/sin(theta*%pi/180)
printf("slit width of white light is %f",a)
