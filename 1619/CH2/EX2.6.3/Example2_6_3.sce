//Example 2.6.3 page 2.25

clc;
clear;

t= 0.1*10^-6;
L=15;
B_opt= 1/(2*t);
B_opt=B_opt/1000000; //converting from Hz to MHz
printf("The maximum optical bandwidth is %d MHz.",B_opt);
del= t/L*10^9; //in ns...
printf("\n\nThe dispersion per unit length is %.2f ns/Km",del);
