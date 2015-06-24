//Example 4.1.5 page 4.6

clc;
clear;

Ec= 1.2*10^11;
P= 3*10^11;
lamda = 0.85*10^-6;
n= Ec/P*100;
printf("The efficiency is %d %%",n);

q= 1.602*10^-19;
h= 6.625*10^-34;
c= 3*10^8;
n= n/100;
R= n*q*lamda/(h*c);
printf("\n\nThe Responsivity of the photodiode is %.4f A/W",R);
