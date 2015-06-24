
//To estimate the final temperature of the machine and its time constant
//Page 230
clc;
clear;

Eff=90/100; //Efficiency
P=15*735.5; //Power Rating in W
D=75*(10^-2); //Cylinder Diameter
L=120*(10^-2); //Length of the Cylinder
OSHD=12; //Outer Surface Heat Dissipation
A=%pi*L*D; //Curved Surface Area
M=450; //Motor Weight
SH=700; //Specific Heat

HTC=M*SH/(A*OSHD*3600); //The Heating Time Constant
Loss=(P/Eff)-P; //Loss in Motor

FT=Loss/(A*OSHD); //Final  Temperature
OSHD2=20; //Semi Closed Cooling Capacity
LossSC=FT*A*OSHD2; //Loss in Semi Closed System

L2=poly(0,'L2'); //Variable Load Value
X=(L2/(L2+LossSC)-Eff); //Polynomial to Calculate L2
L2=roots(X(2)); //Numerical Value of The Load

printf('The Final Temperature of the Machine and its Heating Time Constant is %g degree Celsius and %g Hrs respectively \n',FT,HTC)
printf('The Load which could be delivered is %g W\n',L2)
