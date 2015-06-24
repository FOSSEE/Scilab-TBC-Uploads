//Chapter 2,Ex2.67,Pg2.84
clc;
disp("Refer to the diagram shown in the question")
A=[1 0;5 -10]
B=[50;0]
I=A\B
printf("\n I1=%.0f A \n",I(1))
printf("\n I2=%.0f A \n",I(2))
Vth=3*I(2)
printf("\n Vth=%.0f V \n",Vth)
//Calculation of Rth
Rth=(7*3/(7+3))
printf("\n Rth=%.1f \n",Rth)
//For maximum power transfer the value of the load resistance should be equal to the value of the Thevenin resistance
Pmax=(Vth*Vth)/(4*Rth)
printf("\n Pmax=%.2f W \n",Pmax)