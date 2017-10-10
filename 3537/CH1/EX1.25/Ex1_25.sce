//Example 1_25
clc();
clear;
//To find the value of the slit width
lemda=6500                           //units in angstroam
theta=30                            //units in degrees
a=lemda/sin(theta*%pi/180)
printf("The value of the slit is %.0f angstroam",a)
