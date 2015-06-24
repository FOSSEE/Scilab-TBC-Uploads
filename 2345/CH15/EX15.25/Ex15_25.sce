//Finding Ampere-Turns
//Example 15.25(pg. 408)
clc
clear
Ur=1//relative permeability
B=1.257//flux density in Wb/m^2
Uo=4*%pi*(10^-7)//permeability
H=B/(Uo*Ur)//magnetising force in AT/m
l=0.004//length of air gap in meter
AT=H*l//AT required for the air gap
printf('Thus AT required for the air gap is %3.1f ',AT)
