//Chapter 2,Ex2.54,Pg2.67
clc;
disp("Refer to the diagram shown in the figure")
//Remove the 5 ohms resistor from the network and apply Kirchoff's laws
A=[14 -2;-2 5]
B=[150;50]
I=A\B
printf("\n I1=%.2f A \n",I(1))
printf("\n I2=%.2f A \n",I(2))
//Calculation of Thevenin Voltage
Vth=100-(10*I(1))
printf("\n Vth=%.2f V \n",Vth)
//Calculation of Thevenin Current
Rth=10*3.2/(10+3.2)
printf("\n Rth=%.2f ohms \n",Rth)
//Calculation of load current
Il=Vth/(Rth+5)
printf("\n Iload =%.2f A \n",Il)
