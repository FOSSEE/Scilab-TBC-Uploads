//Chapter 2,Ex2.12,Pg 2.21
clc;
disp("Refer to the diagram shown in the figure")
A=[8 -1 -4 ;-1 8 -5; -4 -5 15]
B=[4; 0; 0]
I=A\B
printf("\n Current supplied by battery=%.2f A\n",I(1))