//Chapter 2,Example2.43,Pg 2.54
clc;
disp("Refer to the diagram shown in the question")
A=[7 -1;1 -6]
B=[10;0]
I=A\B
Vth=(3*I(2))-20
printf("\n Vth=%.2f V \n",Vth)
R1=[((6*1)/(6+1))+2]
Rth=R1*3/(R1+3)
printf("\n Rth=%.2f A \n",Rth)
Il=Vth/(Rth+10)
printf("\n The value of load current = %.2f A \n",Il)
