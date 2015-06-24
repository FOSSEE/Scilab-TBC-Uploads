//Example 3.4.2 page 3.43

clc;
clear;

n= 1.48;
n1= 3.6;
R= (n1-n)^2/(n1+n)^2;
printf("The Fresnel Reflection is %.4f",R);
L= -10*log10(1-R);
printf("\n\nPower loss is %.2f dB",L);
