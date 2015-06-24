//Chapter 2,Ex2.27,Pg 2.33
clc;
disp("Refer to the diagram shown in the figure")
A=[1 0;-2 17]
B=[50;50]
V=A\B
printf("\n V1=%.0f V \n",V(1))
printf("\n V2=%.2f V \n",V(2))
printf("\n Current in the 10 ohms resistor = %.2f A\n",V(2)/10)
