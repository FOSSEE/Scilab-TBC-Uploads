
// Ex5_18
clc;

// Given:
a=3.8*1000*10^-24;// in barns
Ir=0.004;// I0/Ix
d=2.55;// g/cm^3

// Solution:
n=(d*6.02*10^23)/10;// atoms/cm^2
y=(Ir)^-1;
x=log(y)/(n*a);// in cm
printf("The thickness of B foil is = %f cm",x)
