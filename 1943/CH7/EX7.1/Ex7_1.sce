
clc
clear
//Input data
p1=10//Initial pressure in bar
T1=300+273//Initial temperature in K
p2=2//Final pressure in bar
m=1//Mass flow rate of steam in kg/s

//Calculations
px=(0.546*p1)//Critical pressure in bar
ho=3052.2//Enthalpy in kJ/kg
so=7.1229//Entropy in kJ/kg.K
sx=so//Entropy in kJ/kg.K
hx=2905.9//Enthalpy in kJ/kg
vx=0.4125//Specific volume in m^3/kg
Vx=(44.72*sqrt(ho-hx))//Critical velocity in m/s
Ax=(vx/Vx)*10^4//Minimum area of the nozzle in sq.cm

//Output
printf('Minimum area of the nozzles is %3.3f sq.cm',Ax)
