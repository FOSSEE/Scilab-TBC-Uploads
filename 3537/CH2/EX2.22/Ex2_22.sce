//Example 2_22
clc();
clear;
//To calculate slit width
lemda=6000                             //units in angstrom
x=4.2                                 //units in millimeters
x=4.2*10^-3                           //units in meters
D=60                                 //units in centimeters
D=60*10^-3                           //units in meters
d=((D*lemda)/x)*10^-9
printf("The Slit width of the screen is %f",d)
