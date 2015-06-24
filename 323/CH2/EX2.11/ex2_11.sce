//Chapter 2,Ex2.11,Pg 2.20
clc;
disp("Refer to the diagram shown in the figure")
A=[3 -1 -2 ;-1 8 -3; -2 -3 10]
B=[8; 10; 12]
I=A\B
printf("\n Current through the 5 ohms resistor=%.2f A\n",I(3))
