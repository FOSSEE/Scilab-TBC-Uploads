
// Ex5_17
clc;

// Given:
a=2.44*1000*10^-24;// in barns

d=8.64;// g/cm^3

// Solution:
n=(d*6.02*10^23)/112;// atoms/cm^2

x=(log(100))/(n*a);// in cm
printf("The thickness of Cd foil is = %f cm",x)

