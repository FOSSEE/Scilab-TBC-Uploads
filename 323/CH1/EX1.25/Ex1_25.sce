//Chapter 1,Example1.25,Pg1.28
clc;
disp("Refer to the figure shown in the problem")
I1=10/8 //Voltage divided by the sum of the resistances
I2=5 //Current in the second loop is indicated by a current source of 5A
printf("\n I1=%.2f A \n",I1)
printf("\n I2=%.0f A \n",I2)
//Apply KVL to the path from A to B
Vab=3*I1+8-3*I2
printf("\n Vab=%.2f V \n",Vab)