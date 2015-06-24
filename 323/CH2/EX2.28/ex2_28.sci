//Chapter 2,Example 2.28,Pg 2.33
clc;
disp("Refer to diagram shown in the diagram")
A=[6 -5 0;-10 17 -5;0 0 1]
B=[-20;0;20]
V=A\B
printf("\n Va=%.2f V \n",V(1))
printf("\n Vb=%.2f V \n",V(2))
printf("\n Vc=%.0f V \n",V(3))
printf("\n V1=%.2f V \n",V(1)-V(2))
printf("\n V2=%.2f V \n",V(2)-V(3))
