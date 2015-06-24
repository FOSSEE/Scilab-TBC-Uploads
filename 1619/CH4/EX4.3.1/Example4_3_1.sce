//Example 4.3.1 page 4.18

clc;
clear;

n=0.65;
lamda = 900*10^-9;
Pin= 0.5*10^-6;
Im= 10*10^-6;
q= 1.602*10^-19;
h= 6.625*10^-34;
c= 3*10^8;
R= n*q*lamda/(h*c);
Ip= R*Pin;
M= Im/Ip;
printf("The multiplication factor is %.2f",M);
printf("\n\n***NOTE-Answer wrong in textbook...");
