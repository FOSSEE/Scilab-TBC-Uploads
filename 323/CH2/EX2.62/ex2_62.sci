//Chapter 2,Ex2.62,Pg2.77
clc;
disp("Refer to the diagram shown in the figure")
A=[90 -60 0;-60 100 -30;0 30 -30]
B=[120;40;-10]
I=A\B
printf("\n I3=%.2f A \n",I(3))
printf("\n In=%.2f A \n",-I(3))
//Calculation of RN
Rn=[(30*60/(30+60))+10]*30/(30+[(30*60/(30+60))+10])
printf("\n Rn=%.0f ohms \n",Rn)
