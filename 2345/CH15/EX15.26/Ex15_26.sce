//Finding flux
//Example 15.26(pg. 409)
clc
clear
D=0.3//diameter of anchor ring in m
l=%pi*D//length of iron ring in m
N=400//number of turns on the iron ring
a=0.0012//area of cross section of iron path in m^2
Ur=1000//relative permeability
Uo=4*%pi*(10^-7)//permeability
I=2//current in A
phi=(N*I)/(l/(Uo*Ur*a))//flux through iron path in WB
phi1=phi/(10^-3)//flux in mWb
printf('Thus flux through iron path is %2.2f mWb',phi1)
