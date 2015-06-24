//Chapter 2,Ex2.60,Pg2.76
clc;
disp("Refer to diagram shown in the question")
A=[-7 1 0;-1 6 -3;0 3 -3]
B=[-10;0;20]
I=A\B
printf("\n I3=%.2f A \n",I(3))
printf("\n In= %.2f A \n",-I(3))
Rn=[(6*1/(6+1)+2)]*3/(3+[(6*1/(6+1)+2)])
printf("\n Rn=%.2f A \n",Rn)
//Calculation of Il
Il=13.17*(1.46/(1.46+10))
printf("\n Il=%.2f A \n",Il)
