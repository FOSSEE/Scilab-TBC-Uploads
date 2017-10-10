//Example 2_3
clc();
clear;
//To calculate the minimum number of lines
lemda=5890                    //units in angstrom
lemda=5890*10^-8              //units in centimeters
dlemda=6*10^-8               //units in centimeters
k=2
width=2.5                   //units in centimeters
n=(lemda/(k*dlemda))/width
printf("no of lines per cm is %.1f",n)
