//Chapter 2.Ex2.50,Pg 2.63
clc;
disp("Refer to the diagram shown in the figure")
//Simultaneous equations have been found by applying Kirchoff's Laws to the meshes
A=[1 0;-12 18]
B=[6;42]
I=A\B
Vth=6*I(2)
printf("\n Vth=%.0f V \n ",Vth)
Rth=6*12/(6+12) //Thevenin resistance of the network
Il=Vth/(Rth+3)
printf("\n Iload= %.2f A \n",Il)
