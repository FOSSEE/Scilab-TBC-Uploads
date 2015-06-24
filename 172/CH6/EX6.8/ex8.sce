//example 8
//Required pump work
clear
clc
m=1.5 //mass flow rate of water in kg/s
g=9.807 //acceleration due to gravity in m/s^2
Zin=-15 //depth of water pump in well in metres
Zex=0 //in metres
v=0.001001 //specific volume in m^3/kg
Pex=400+101.3 //exit pressure in kPa
Pin=90 //in kPa
W=m*(g*(Zin-Zex)*0.001-(Pex-Pin)*v) //power input in kW
printf(" \n Hence, the pump requires power input of W=%.0f W. \n",W*1000)