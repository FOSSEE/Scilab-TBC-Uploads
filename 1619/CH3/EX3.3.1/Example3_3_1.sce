//Example  3.3.1 page 3.25

clc;
clear;
r1= 0.32;
r2= 0.32;
alpha= 10;
L= 500*10^-4;
temp=log(1/(r1*r2));
Tgth = alpha + (temp/(2*L));
printf("The optical gain at threshold is %.2f /cm",Tgth);
