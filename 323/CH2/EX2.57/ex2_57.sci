//Chapter2,Ex2.57,Pg2.73
clc;
disp("Refer to the diagram shown in the question")
A=[1 0 0;0 -1 1;0 -5 -15]
B=[2;4;0]
I=A\B
printf("\n I1=%.0f A \n",I(1))
printf("\n I2=%.0f A \n",I(2))
printf("\n I3=%.0f A \n",I(3))
printf("\n In=%.0f A \n",(I(1)-I(2)))
//Calculation of Rn
//Replace the voltage sources by open circuit and current sources by short circuit
Rn=1*(5+15)/(1+5+15)
printf("\n Rn=%.2f ohms \n",Rn)
Il=(5*Rn)/(10+Rn) //Using current division formula
printf("\n Il = %.2f A \n",Il)