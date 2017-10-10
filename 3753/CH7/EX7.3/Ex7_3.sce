//Example number 7.3, Page number 7.14

clc;clear;close

// Variable declaration

//dimensions in m
h1=1
k1=0
l1=0
h2=1
k2=1
l2=0
h3=1
k3=1
l3=1
a=1 // in m

// Calculations
d1=a/(sqrt(h1^2+k1^2+l1^2)) // in m
d2=a/(sqrt(h2^2+k2^2+l2^2)) // in m
d3=a/(sqrt(h3^2+k3^2+l3^2)) // in m

// Result
printf("d1 = %.1f m",d1)
printf("\nd2 = %.3f m",d2)
printf("\nd3 = %.3f m",d3)
printf("\n ratio d1:d2:d3 = %.f:%0.3f:%.3f",d1,d2,d3)
