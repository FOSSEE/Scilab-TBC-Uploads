//Chapter 2, Example2.69,Pg2.85
clc;
disp("Refer to the diagram shown in the figure")
A=[15 -5;0 1]
B=[120;-6]
I=A\B
printf("\n I1=%.0f A \n",I(1))
printf("\n I2=%.0f A \n",I(2))
Vth=120-10*I(1)  //Thevenin Voltage
printf("\n Vth =%.0f V \n",Vth)
//Calculation of Rth
Rth=(10*5/(10+5))
printf("\n Rth=%.2f ohms \n",Rth)
//For maximum power transfer load resistance should be equal to thevenin resistance
Pmax=(Vth*Vth/(4*Rth))
printf("\n Pmax=%.2f W \n",Pmax)

