//Chapter 2,Example 2.24,Pg 2.30
clc;
disp("Refer to the diagram shown in the figure")
A=[4 -2 -1;-50 71 -20;-5 -4 10]
B=[-24;0;180]
V=A\B
printf("\n Va=%.2f V\n",V(1))
printf("\n Vb=%.2f V\n",V(2))
printf("\n Vc=%.2f \n",V(3))
printf("\n Voltage across 5 ohms resistor=%.2f \n",V(3)-V(2))
