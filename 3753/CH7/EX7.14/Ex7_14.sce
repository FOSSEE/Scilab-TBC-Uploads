//Example number 7.14, Page number 7.19

clc;clear;close

// Variable declaration
a=4.57 // in m
h=1// in m
k=1// in m
l=1// in m
lamda=1.52 //in m
twotheta=33.5*%pi/180// radian
r=5                  // radius
// Calculations
d=a/(h^2+k^2+l^2)^(1/2)// in m
sintheta=lamda/(2*d)// // unitless
X=r/tan(twotheta)// in cm

// Result
printf("d = %.2f Angstorms",d)
printf("\nsin(theta) = %.3f",sintheta)
printf("\nX = %.3f cm",X)
