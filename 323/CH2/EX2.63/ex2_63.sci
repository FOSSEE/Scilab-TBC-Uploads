//Chapter 2,Ex2.63,Pg2.79
clc;
disp("Refer to the diagram shown in the figure")
A=[-1 1;12 0]
B=[2;55]
I=A\B
printf("\n I1=%.2f A \n",I(1))
printf("\n I2=%.2f A \n",I(2))
printf("\n In=%.2f A \n",I(2))
//Calculation of Rn
Rn=12*4/(12+4)
printf("\n Rn=%.0f ohms \n",Rn)
//Calcuation of Il
Il=6.58*Rn/(Rn+8)
printf("\n Il=%.2f A \n",Il)
