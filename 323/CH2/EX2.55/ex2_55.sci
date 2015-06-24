//Chapter 2,Ex2.55,Pg2.68
clc;
disp("Refer to the diagram shown in the figure")
//Calculation of Vth
//The network is divided into meshes and Kirchoff's laws are applied to the meshes to obtain simultaneous equations
A=[4 -2;-1 4]
B=[-25;10]
I=A\B
printf("\n I1=%.0f A \n",I(1))
printf("\n I2=%.0f A \n",I(2))
Vth=(2*I(1))+(2*I(2))
printf("\n Vth=%.0f V \n",Vth)
//Calculation of Rth
//Convert star resistances formed by 2 ohms, 2 ohms and 1 ohm into an equivalent delta network
R1=2*2/(2+2+1)
R2=R1 //R1=R2 since the resistances are of equal value
R3=2*1/(2+1+2)
Rth=8*(2*(4*1/(4+1)))/(8+(2*(4*1/(4+1))))
printf("\n Rth=%.2f ohms \n",Rth)
//Calculation of load current
Il=Vth/(Rth+10)
printf("\n Il=%.2f A \n",Il)
