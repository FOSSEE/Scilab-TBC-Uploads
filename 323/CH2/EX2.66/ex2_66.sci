//Chapter 2,Ex2.66,Pg2.83
clc;
disp("Refer to the diagram shown in the question")
//Calculation og Vth
A=[-1 1;-6 -5]
B=[4;2]
I=A\B
printf("\n I1=%.0f A \n",I(1))
printf("\n I2=%.0f A \n",I(2))
Vth=8-I(1)
printf("\n Vth=%.0f V \n",Vth)
