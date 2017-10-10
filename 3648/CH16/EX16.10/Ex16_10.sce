//Example 16_10
clc();
clear;
//To find the absolute potential and how much energy is needed to pull the electrons from atom
k=9*10^9       //Units in N meter^2/C^2
q=1.6*10^-19 //Units in C
r=5.3*10^-11       //Units in meters
v=(k*q)/r   //Units in V
printf("The absolute potential is V=%.1f V\n",v)
Vinfinity=0            //Units in V
deltaV=Vinfinity-v         //Units in V
work=-q*deltaV           //Units in J
printf("The energy that is required is W=")
disp(work)
printf("J")   
