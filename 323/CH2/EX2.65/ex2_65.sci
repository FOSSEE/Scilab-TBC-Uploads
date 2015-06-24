//Chapter 2,Ex2.65,Pg2.82
clc;
disp("Refer to the diagram shown in the figure")
I=-3/4
printf("\n I=%.2f A \n",I)
Vth=6+2*I-10
printf("\n Vth=%.1f V \n",Vth)
//Calculations Rth
Rth=(2*2/(2+2))+2
printf("\n Rth=%.0f ohms \n",Rth)
//Value of Rl
Pmax=(Vth*Vth/(4*Rth))
printf("\n Pmax=%.2f W \n",Pmax)
