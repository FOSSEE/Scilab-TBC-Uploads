//Chapter 2,Ex2.14,Pg 2.22
clc;
disp("Refer to the diagram shown in the figure")
A=[1 0 0 ;0 18 -6; 0 6 -11]
B=[6; 108; 9]
I=A\B
printf("\n Current through 2 ohms resistor=%.0f A\n",I(3))