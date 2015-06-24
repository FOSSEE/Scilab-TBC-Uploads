//Chapter 2,Ex2.56,Pg2.71
clc;
disp("Refer to the diagram shown in the question")
//Remove the 1 ohm resistor from the meshes 1 and 2, then we can say the following about the current
I1=-3 //Current in amperes
I2=1 //Current in amperes
printf("\n I1=%.0f A \n",I1)
printf("\n I2=%.0f A \n",I2)
//Calculation of Vth
Vth=4-2*(I1-I2)
printf("\n Vth=%.2f V \n",Vth)
//Calculation of Rth
//It can be easily deduced by looking at the diagram that Rth=2 ohms
Rth=2
//Calculation of load current
Il=Vth/(Rth+1)
printf("\n Il=%.0f A \n",Il)


