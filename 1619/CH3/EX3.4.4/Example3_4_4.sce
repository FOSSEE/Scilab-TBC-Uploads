//Example 3.4.4 page 3.44

clc;
clear;

n1= 1.5;
n=1;
R= (n1-n)^2/(n1+n)^2;
L= -10*log10(1-R);
//Total loss is twice due to reflection
L= L+L;
printf("Total loss due to Fresnel Reflection is %.2f dB",L);
