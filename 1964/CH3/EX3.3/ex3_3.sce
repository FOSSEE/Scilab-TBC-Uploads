//Chapter-3, Example 3.3, Page 110
//=============================================================================
clc
clear

//INPUT DATA
l=0.1;//conductor length (10 cm)=(0.1 m)
I=60;//current in amperes (A)
H=1000;//magnetic field strength in ampere/metre (A/m)
v=1;//conductor speed in metre/second(m/s)
u0=4*%pi*10^-7;//permeability in free space in henry/m
//CALCULATIONS
B=u0*1000;//magnetic flux density in (wb/m^2)
F=B*I*l;//force in Newtons(N)
P=F*v;//power in watt 
E=B*l*v;//emf induced in conductor
//OUTPUT
mprintf("The force acting on conductor %1.4f N \n",F);
mprintf("The mechanical power to move this conductor is %1.4f watt \n",P);
mprintf("The induced emf in conductor is %1.5f V \n",E);

//=================================END OF PROGRAM==============================
