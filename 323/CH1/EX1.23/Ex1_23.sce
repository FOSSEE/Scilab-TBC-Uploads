//Chapter 1,Example 1.23,Pg1.27
clc;
disp("Refer to the figure shown in the diagram")
I1=20/15 //Voltage in the loop divided by the sum of resistances
I2=15/10 //Voltage in the loop divided by the sum of resistances
printf("\n I1=%.2f A \n",I1)
printf("\n I2=%.1f A \n",I2)
Vab=5*I1-6*I2+5+15 //By applying KVL to the loop
printf("\n Vab=%.2f V",Vab)
