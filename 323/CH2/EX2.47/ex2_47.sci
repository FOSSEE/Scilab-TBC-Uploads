//Chapter2,Ex2.47,Pg2.58
clc;
disp("Refer to the diagram shown in the question")
I1=220/(30+50)
I2=220/(20+5)
printf("\n I1=%.2f A \n",I1)
printf("\n I2=%.2f A \n",I2)
Vth=(20*I2)-(30*I1)
printf("\n Vth=%.1f V \n",Vth)
Rth=(30*50/(30+50))+(20*5/(20+5))
printf("\n Rth=%.2f ohms \n",Rth)
Il=Vth/(Rth+24)
printf("\n Iload=%.0f A \n",Il)