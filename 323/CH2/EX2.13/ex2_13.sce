//Chapter 2,Ex2.13,Pg 2.22
clc;
disp("Refer to the diagram shown in the figure")
A=[1 -2 -5 ;0 -6 1; 1 1 -10]
B=[20; 0; 0]
VI=A\B
printf("\n Current supplied by battery=%.1f A\n",VI(1))