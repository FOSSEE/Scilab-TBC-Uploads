//Chapter 2,Example 2.31,Pg2.35
clc;
disp("Refer to the figure shown question")
A=[1 0 -1;2 -2 1;-5 7 0]
B=[8; -12; 80]
V=A\B
printf("\n V1=%.0f V \n",V(1))
printf("\n V2=%.0f V \n",V(2))
printf("\n V3=%.0f V \n",V(3))
printf("\n Current through the 4 ohms resistor= %.0f A \n",V(3)/4)

