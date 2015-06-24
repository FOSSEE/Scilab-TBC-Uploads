//Chapter 2,Ex2.64,Pg2.80
clc;
disp("Refer to the diagram shown in the figure")
A=[0 -5 -2;0 4 -2;-2 -2 4]
B=[-2;-1;0]
I=A\B
printf("\n I1=%.2f A \n",I(1))
printf("\n I2=%.2f A \n",I(2))
printf("\n I3=%.2f A \n",I(3))
printf("\n In=%.2f A \n",I(3))
//Calculation of Rn
Rn=(2*3/(2+3))+(2*2/(2+2))
printf("\n Rn=%.1f ohms \n",Rn)
