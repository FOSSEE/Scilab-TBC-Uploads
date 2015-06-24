//Finding inductance and energy
//Example 15.23(pg. 407)
clc
clear
l=0.5//length of coil in meters
d=0.1//diameter of coil
N=1500//no of turns of coil
a=%pi*(d^2)/4//cross sectional area of coil in m^2
Ur=1//relative permeability
Uo=4*%pi*(10^-7)//permeability
I=8//current in A
L=((N^2)*a*Uo*Ur)/l//self inductance of coil in H
E=(1/2)*L*(I^2)//Energy stored in Joules
printf('Thus Self Inductance of coil is %2.3f H\n',L)
printf('and Energy stored is %1.2f Joules',E)
