//Example 1_28
clc();
clear;
//To calculate the order of interference of the dark fringe
u=1.33
t=1.5*10^-4                       //units in cm
i=60                             //units in degrees
lemda=5*10^-5                    //units in cm
r=asin(sin(60*%pi/180)/u)*180/%pi
n=(2*u*t*cos(r*%pi/180))/lemda
printf("The order of interface of the dark fringe is %.0f",n)
