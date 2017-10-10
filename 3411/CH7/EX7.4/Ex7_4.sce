//Example 7_4
clc();
clear;
//To calculate the numerical apperture and angle of acceptance
n1=1.45
n2=1.40
NA=sqrt(n1^2-n2^2)
printf("Numerical apperture is NA=%.3f\n",NA)
ia=asin(NA)*180/%pi             //units in degrees
printf("Angle of acceptance is ia=%.2f Degrees",ia)
