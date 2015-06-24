//Finding current
//Example 6.1(pg 212)
clc
clear
f=0.01//flux in Wb
l=1//mean circumference in m
N=1000//tunrs
Ur=1000//relative permeability
Uo=4*%pi*(10^-7)//permeability of free space in H/m
a=0.001// cross section area in m^2
I=(f*l)/(N*Uo*Ur*a)// current in Amp. since f=A*T/(l/Uo*Ur*a)
printf('Thus Current required is %3.3f Amp',I)
