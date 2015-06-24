//Chapter2,Ex2.51,Pg2.64
clc;
disp("Refer to the diagram shown in the figure")
A=[-1 1;15 100]
B=[13;150]
I=A\B
printf("\n I1=%.0f A \n",I(1))
printf("\n I2=%.0f A \n",I(2))
Vth=(40*I(2))-50
printf("\n Vth=%.0f V \n",Vth)
Rth=75*40/(75+40)
printf("\n Rth=%.2f ohms \n",Rth)
Il=Vth/(Rth+30)
printf("\n Iload=%.2f A \n",Il)
