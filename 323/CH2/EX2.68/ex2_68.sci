//Chapter 2,Example2.68,Pg2.85
clc;
disp("Refer to the diagram shown in the figure")
A=[-1 1;5 2]
B=[6;10]
I=A\B
printf("\n I1=%.2f A \n",I(1))
printf("\n I2=%.2f A \n",I(2))
//Calculation of Vth
Vth=2*I(2)
printf("\n Vth=%.2f V \n",Vth)
//Calculation of Rth
Rth=(5*2/(5+2))+3+4
printf("\n Rth=%.2f ohms \n",Rth)
//For maximum power transfer the load resistance should be equal to the Thevenin resistance
Pmax=(Vth*Vth/(4*Rth))
printf("\n Pmax=%.2f W \n",Pmax)
