//Chapter 2,Ex2.30,Pg2.34
clc;
disp("Refer to the figure shown in the diagram")
A=[1 -1;2 1]
B=[6;28]
V=A\B
printf("\n V1=%.2f V\n",V(1))
printf("\n V2=%.2f V\n",V(2))
printf("\n Current through the 4 ohms resistor=%.2f\n",V(2)/4)
