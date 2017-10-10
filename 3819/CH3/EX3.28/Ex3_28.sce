// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.28

//Data given in the Problem
dens=1000
g=9.81
R=1
l=2
p=0.2*g*10^4
BO=1
OD=2.5
AO=1
OH=AO*cos(30/180*%pi)
AH=2.5-2
AE=2

//calculations
h=p/(dens*g)
//1)horizontal force component
A=1.5*l
H=h+1.5/2
F_x=dens*g*A*H
mprintf("The horizontal Force is %f N in X \n",F_x)
//2)Vertical
//Fy=W_CODFBC-W_AEFB
W_CODFBC=dens*g*(%pi/4*R^2+BO*OD)*l
//For area of AEFB,
A_ABH=%pi*R^2*30/360-AH*OH/2
AG=BO-OH
A_AEFB=AE*AG+AG*AH-A_ABH
W_AEFB=dens*g*A_AEFB*l
F_y=W_CODFBC-W_AEFB
mprintf("The Force in y drection is %f N \n",F_y)
