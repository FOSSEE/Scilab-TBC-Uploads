//Example 2// Ch 12
clc;
clear;
close;
// given data
V=100;//in kV
Em=55;//max permissible gradient in kV/cm
//voltage gradient at the conductor surface is inversely proportional to the core radius
r=V*sqrt(2)/Em;//conductor radius in cm
printf("conductor radius %f cm",r)

