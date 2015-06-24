//Calculating the rotor current at slip 3 precent and when the rotor develops maximum torque
//Chapter 4
//Example 4.33
//page 351
clear;
clc; 
disp("Example 4.33")
E20=100;...............................//induced emf between slip terminals in volts
E20p=E20/sqrt(3);.......................//induced emf per phase in volts
printf("induced emf per phase=%fV",E20p)
S=3/100;...........................//slip
R2=0.2;.................................//resistance in ohms
X20=1;................................//standstill resistance in ohms
I2=(S*E20p)/sqrt((R2)^2+(S*X20)^2)
printf("\nrotor current at slip 0.03 =%fA per phase",I2)
Sm=R2/X20;
I2m=(Sm*E20p)/sqrt((R2)^2+(Sm*X20)^2)
printf("\nrotor current when the rotor develops maximum torque=%fA per phase",I2m)