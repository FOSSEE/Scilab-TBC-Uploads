//Chapter 2,Ex2.9,Pg 2.18
clc;
disp("Refer to the diagram shown in the figure")
A=[10 -3 -6;-3 10 0;-6 0 10]
B=[10; -5; 25]
I=A\B
printf("\n Current through the 5 ohms resistor=%.2f A\n",I(2))

