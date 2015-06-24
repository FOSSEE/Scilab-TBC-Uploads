//relative permeability
//Example 6.2(pg 212)
clc
clear
f=1.2*(10^-3)//flux in Wb
l=1.4//mean circumference in m
N=500//tunrs
Uo=4*%pi*(10^-7)//permeability of free space in H/m
a=0.0012// cross section area in m^2
I=2//current in Amp
Ur=(f*l)/(N*I*Uo*a)//relative permeability
printf('Thus the relative permeability of iron is %3.2f ',Ur)
