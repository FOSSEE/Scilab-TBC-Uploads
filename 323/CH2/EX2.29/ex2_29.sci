//Chapter 2,Ex2.29,Pg 2.33
clc;
disp("Refer to the figure shown in the diagram")
A=[1 0 0;-1 3 -1;-2 -5 10]
B=[60;12;24]
V=A\B
printf("\n Voltage across the 100 ohms resistor=%.2f V\n",V(3))
