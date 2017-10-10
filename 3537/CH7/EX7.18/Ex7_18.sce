//Example 7_18
clc();
clear;
//To find the numerical aperature and acceptance angle
n1=1.6
n2=1.4
n0=1.33
NA=sqrt(n1^2-n2^2)/n0
printf("The numerical aperature is %.3f",NA)
theta=asin(NA)*180/%pi
printf("\nThe acceptance angle is %.2f degrees",theta)
