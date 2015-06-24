//Chapter 2,Ex2.58,Pg 2.74
clc;
disp("Refer to the diagram shown in the figure")
A=[7 -2;-2 10]
B=[20;-12]
I=A\B
printf("\n I2= %.2f A \n",I(2))
printf("\n In=%.2f A \n",-I(2))
//Calculation of Rn
Rn=(5*2/(5+2))+8
printf("\n Rn=%.2f ohms \n",Rn)
//Calculation of Il
Il=0.67*(Rn/(Rn+10)) //Current is short circuit current calculated
printf("\n Il=%.2f A \n",Il)

