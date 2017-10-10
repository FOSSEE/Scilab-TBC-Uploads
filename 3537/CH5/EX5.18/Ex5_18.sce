//Example 5_18
clc();
clear;
//To calculate the glancing angle
h=1
k=1
l=0
lamda=0.065*10^-9   //units in m
n=2
a=0.26*10^-9   //units in nm
sintheta=(n*lamda*sqrt(h^2+k^2+k^2))/(2*a)
theta=asin(sintheta)*180/%pi   //units in degrees
printf("Theta=%.2f degrees",theta)
//the answer in the textbook is given wrong as theta=20.7 degrees but the right answer is 25.66 degrees
