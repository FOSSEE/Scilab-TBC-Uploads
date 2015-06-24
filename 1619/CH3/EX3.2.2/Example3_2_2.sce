//Example 3.2.2 page 3.10

clc;
clear;
x= 0.26;
y=0.57;
Eg= 1.35-0.72*y+0.12*y^2;
lamda = 1.24/Eg;
printf("The wavelength emitted is %.2f um",lamda);
