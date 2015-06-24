//Chapter 2,Ex2.49,Pg2.61
clc;
disp("Refer to the diagram shown in the question")
A=[30 -15;-15 20]
B=[-75;20]
I=A\B
printf("\n I1=%.1f A \n",I(1))
printf("\n I2=%.1f A \n",I(2))
Vth=45-(10*(I(1)-I(2))) //Thevenin Voltage
printf("\n Vth =%.0f V \n",Vth)
//Converting the delta formed by the resistances into star network
R1=10*5/(10+5+5)
R2=10*5/(10+5+5)
R3=5*5/(10+5+5)
Rth=((R3+15)*2.5/(R3+15+2.5))+2.5
printf("\n Rth=%.2f ohms \n",Rth)
Il=Vth/(Rth+20)
printf("\n Iload=%.2f A \n",Il)

