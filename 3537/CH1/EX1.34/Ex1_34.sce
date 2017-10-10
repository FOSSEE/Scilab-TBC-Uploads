//Example 1_34
clc();
clear;
//To calculate the refractive index of the liquid
D1=1.40                          //units in centimeters
D1=1.40*10^-2                    //units in meters
D2=1.27                          //units in centimeters
D2=1.27*10^-2                    //units in meters
u=(D1/D2)^2
printf("Refractive index of the liquid is %.3f",u)
