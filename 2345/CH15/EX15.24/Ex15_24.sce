//Finding flux and field strength
//Example 15.24(pg. 408)
clc
clear
N=600//number of turns on the coil
I=2//current passing through solenoid in A
l=0.6//length of solenoid in meter
H=N*I/l//magnetic field at the centre in AT/m
Ur=1//relative permeability
Uo=4*%pi*(10^-7)//permeability
d=0.025//diameter in meters
a=%pi*(d^2)/4//cross sectional area of coil in m^2
phi=Uo*Ur*H*a//flux in Wb
printf('Thus Magenetic field at centre is %3.2f AT/m',H)
printf('\n and Flux is %e Wb',phi)
