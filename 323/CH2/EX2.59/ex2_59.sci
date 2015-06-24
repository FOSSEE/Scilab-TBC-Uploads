//Chapter 2,Ex2.59,Pg2.75
clc;
disp("Refer to the diagram shown in the figure")
A=[70 -20;-20 20]
B=[40;0]
I=A\B
printf("\n I1=%.0f A \n",I(1))
printf("\n I2 =%.1f A \n",I(2))
printf("\n In = %.1f A \n",I(2))
//Calculation of Rn
Rn=(50*20/(50+20)) //Resistance of 40 ohms gets shorted because it is connected across a short circuit
printf("\n Rn=%.2f ohms \n",Rn)
//Calculation of Il
Il=(1.5*14.28/(14.28+10))
printf("\n Il=%.2f A \n",Il)

