//calculate induced emf
//Chapter 2
//Example 2.7
//page 97
clear;
clc;
disp("example 2.7")
disp("flux is constant")

E=180;...............//induced emf at 500rpm
N=500;.................//speed in rpm
K1=(E/N)
printf("K1=%f",K1)
E1=(K1*600)           //induced emf at 600rpm
printf("\n induced emf at 600rpm is=%d V",E1)