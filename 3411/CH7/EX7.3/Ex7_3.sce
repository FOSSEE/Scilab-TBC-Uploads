//Example 7_3
clc();
clear;
//To calculate the numerical apperture and angle of acceptance
n1=1.48
delta=0.05
NA=n1*sqrt(2*delta)
printf("Numerical apperture is NA=%.3f\n",NA)
ia=asin(NA)*180/%pi             //units in degrees
printf("Angle of acceptance is ia=%.2f Degrees",ia)
