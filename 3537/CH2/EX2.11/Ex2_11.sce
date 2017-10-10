//Example 2_11
clc();
clear;
//To find the slit width
d=2                          //units in meters
lemda=500*10^-9              //units in meters
x=5*10^-3                    //units in meters
a=(d*lemda)/x*10^3
printf("The slit width is %.1f mm",a)
