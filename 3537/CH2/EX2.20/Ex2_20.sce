//Example 2_23
clc();
clear;
//To find the angular separation 
lemda=600*10^-9                          //units in meters
n=1
a=1*10^-6                               //units in meters
theta=asin((n*lemda)/a)*180/%pi
printf("The angular separation is %.2f degrees",theta)
