// Design and analysis of sprue for casting
clc
Q = 1.667e-4 // discharge in m^3/sec
d = 20 // diameter of sprue in mm
h = 200 // height of sprue in mm
g = 9.81 // acceleration due to gravity in m/s^2
p = 2700 // density in kg/m^3
neeta = 0.004 // viscosity coefficient

printf("\n Example 5.2")
A1 = %pi/4*(d*1e-3)^2
v1 = Q/A1
v2 = sqrt((h*1e-3)*2*g+v1^2)
A2 = Q/v2^2
D = sqrt(4/%pi * A2)
Re = v2*D*p/neeta

printf("\n Resultant velocity is %.2f m/sec \n Reynolds number is %d",v2,Re)
// answers in book are as velocity: 1.45 m/sec and Reynolds number: 11745

