//Chapter 2,Ex2.26,Pg 2.31
clc;
disp("Refer to the diagram shown in the figure")
A=[0.5 -0.2;0.1 -0.4]
B=[34.2;-32.4]
V=A\B
printf("\n Va=%.2f V \n",V(1))
printf("\n Vb=%.2f V \n",V(2))
printf("\n I1=%.0f A \n",(120-V(1))/0.2)
printf("\n I2=%.0f A \n",(V(1)-V(2))/0.3)
printf("\n I3=%.0f A \n",(110-V(2))/0.1)
