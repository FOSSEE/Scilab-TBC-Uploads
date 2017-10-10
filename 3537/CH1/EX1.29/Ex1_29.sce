//Example 1_29
clc();
clear;
//To calculate the smallest thickness of the plate
lemda=5890                          //units in angstroam
//lemda=5890*10^-10                  //units in mts
u=1.5
r=60                              //units in degrees
t=lemda/(2*u*cos(r*%pi/180))
printf("The smallest thickness of the plate is %.0f angstroam",t)
