//Example 2_12
clc();
clear;
//To find the half angular width of the central bright
lemda=6000*10^-10                   //units in meters
a=12*10^-7                        //units in meters
theta=asin(lemda/a)*180/%pi
printf("The half angular width of the central bright is %.0f degrees",theta)
