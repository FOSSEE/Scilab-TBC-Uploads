//Chapter 2,Ex2.70,Pg2.87
clc;
disp("Refer to the diagram shown in the question")
A=[1 0;-25 41]
B=[3;0]
I=A\B
printf("\n I1= %.0f A \n",I(1))
printf("\n I2= %.0f A \n",I(2))
Vth=-20+10*I(2)+6*I(2)
printf("\n Vth=%.2f V \n",Vth)
//Calculation of Rth
Rth=(25*16/(25+16))
printf("\n Rth= %.2f ohms \n",Rth)
//For maximum power transfer the load resistance should be equal to the Thevenin resistance
Pmax=(Vth*Vth/(4*Rth))
printf("\n Pmax=%.2f W \n",Pmax)
