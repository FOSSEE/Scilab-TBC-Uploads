//Example 7_1
clc();
clear;
//To calculate Critical angle numerical apperture and acceptance angle
n1=1.5
n2=1.47
phi=asin(n2/n1)*180/%pi   //units in degrees
NA=sqrt(n1^2-n2^2)
accetangle=asin(NA)*180/%pi   //units in degrees
printf("Critical angle=%.1f degrees",phi)
printf("\n Numerical apperture=%.2f",NA)
printf("\nAcceptance angle=%.1f Degrees",accetangle)
