clc
clear
//Input data
d=0.001//Diameter of the jet in m
vd=104//Venturi depression in cm of water. In textbook, it is given as 10 cm
Cd=0.65//Coefficient of discharge 
g=0.76//Specific gravity of petrol
w=1000//Weight of water per one cu.m in kg

//Calculations
pa=(vd/100)*w//Venturi depression in kg/m^2
dp=(g*w)//Density of petrol in kg/m^3
wf=(((3.14*d^2)/4)*Cd*sqrt(2*9.81*dp*pa))/10^-3//Petrol discharge in gm/sec neglecting nozzle lip

//Output
printf('The weight of petrol discharged is %3.2f gm/sec',wf)
