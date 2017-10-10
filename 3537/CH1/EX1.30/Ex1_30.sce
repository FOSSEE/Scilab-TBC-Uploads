//Example 1_30
clc();
clear;
//To calculate the thickness of air film
lemda=500                        //units in nanometers
lemda=500*10^-9                  //units in meters
n=10
D=2                             //units in millimeters
D=2*10-3                      //units in meters
R=D^2/(4*n*lemda)             //units in meters
t=(D^2/(8*R))*10^6
printf("Thickness of air film is %.1f micrometers",t)
