//Chapter 2,Ex2.46,Pg2.57
clc;
disp("Refer to the diagram shown in the question")
I1=50/10
I2=20/20
Vth=(4*I1)+2-(15*I2)
printf("\n Vth=%.0f V \n",Vth)
Rth=(6*4/(6+4))+(5*15/(5+15))
printf("\n Rth=%.2f ohms \n",Rth)
Il=7/(Rth+10)
printf("\n Iload=%.2f \n",Il)
