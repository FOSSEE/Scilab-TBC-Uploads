//Example 1_32
clc();
clear;
//To find the radius of curvature of the lens
lemda=5900                          //units in angstroam
lemda=5900*10^-10                  //units in meters
D=0.5                             //units in centimeters
D=0.5*10^-2                      //units in meters
n=10
R=D^2/(4*n*lemda)
printf("The radius of the curvature of lens is %.3f meters",R)
