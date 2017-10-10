//Example 7_9
clc();
clear;
//To calculate the angle of acceptance of a optical fiber
n1=1.563
n2=1.498
theta=asin(sqrt(n1^2-n2^2))*180/%pi
printf("The angle of acceptance is %.2f degrees",theta)
