clc
clear
//Input data
d=0.0625//Diameter in m
L=0.09//Stroke in m
nv=0.75//Volumetric efficiency
p=1.03//Pressure at N.T.P in kg/cm^2
T=273//Temperature at N.T.P in K
R=29.27//Characteristic gas constant in kg.m/kg.degree C

//Calculations
Vs=((3.14/4)*d^2*L)//Swept volume in cu.m
V=(nv*Vs)//Volume of charge at N.T.P in cu.m
w=(p*10^4*V)/(R*T)//Weight of the charge in kg/cycle

//Output
printf('The weight of the charge is %3.6f kg/cycle',w)
