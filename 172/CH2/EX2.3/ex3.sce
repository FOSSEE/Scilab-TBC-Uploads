//example 3
//calculating the required force
clear
clc
Dcyl=0.1 //cylinder diameter in m
Drod=0.01 //rod diameter in m
Acyl=%pi*Dcyl^2/4 //cross sectional area of cylinder in m^2
Arod=%pi*Drod^2/4 //cross sectional area of rod in m^2
Pcyl=250000 //inside hydaulic pressure in Pa
Po=101000 //outside atmospheric pressure in kPa
g=9.81 //acc. due to gravity in m/s^2
mp=25 //mass of (rod+piston) in kg
F=Pcyl*Acyl-Po*(Acyl-Arod)-mp*g //the force that rod can push within the upward direction in N
printf("\n hence,the force that rod can push within the upward direction is F = %.3f N. \n",F)