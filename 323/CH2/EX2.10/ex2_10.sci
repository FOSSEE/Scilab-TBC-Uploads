//Chapter 2,Ex2.10,Pg 2.19
clc;
disp("Refer to the diagram shown in the figure")
A=[7 -1 0 ;-1 6 -3; 0 -3 13]
B=[10; 0; -20]
I=A\B
printf("\n Current through the 2 ohms resistor=%.2f A\n",I(2))

