//Chapter2,Ex2.61,Pg2.77
clc;
disp("Refer to the diagram shown in the figure")
A=[20 -20 0;-20 60 -20;0 -20 50]
B=[10;40;-100]
I=A\B
printf("\n I1=%.2f A \n",I(1))
printf("\n In=%.2f A \n",I(1))
//Calculation of Rn
Rn=[(20*30/(20+30))+20]*20/(20+[(20*30/(20+30))+20])
printf("\n Rn=%.1f ohms \n",Rn)
//Calculation of Il
Il=I(1)*Rn/(Rn+10)
printf("\n Il=%.2f A \n",Il)
