//Example number 7.2, Page number 7.13

clc;clear;close


// Variable declaration
a=3.61*10^-7 // in m
BC=sqrt(2)/2 //in m
AD=(sqrt(6))/2// in m
// Result
printf("i)Surface area of the face ABCD = %.e mm^2",(a^2))
printf("\nii)Surface area of plane (110) = %.2e atoms/mm^2",((2/(a*sqrt(2)*a))))
printf("\niii)Surface area of plane(111)= %.3e atoms/mm^2",(2/(BC*AD*a^2)))
