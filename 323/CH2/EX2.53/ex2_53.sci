//Chapter 2,Ex2.53,Pg2.66
clc;
disp("Refer to the diagram shown in the figure")
//Applying Kirchoff's laws to mesh 1 and mesh 2 we can state the following
I1=10/(10+4) //Current in amperes
I2=2 //Current in amperes
printf("\n I1=%.2f A \n",I1)
printf("\n I2=%.0f \n",I2)
vth=(4*I1)+(8*I2)
printf("Vth=%.2f V \n",vth)
//Calculation of Rth
//From the figure it can be seen that Rth can be easily calculated to be the following 
Rth=(10*4/(10+4))+8
printf("\n Rth=%.2f ohms \n",Rth)
//Calculation of load current
Il=vth/(Rth+20)
printf("\n Iload=%.2f A \n",Il)
