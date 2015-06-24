clc
clear
//Input data
d=0.04//Inside diameter of garden hose in m
D=0.01//Diamter of nozzle opening in m
v1=0.6//speed of flow of water in the hose in m/s

//calculations
a=3.14*(d/2)^2//Area of hose in m^2
A=3.14*(D/2)^2//Area of nozzle in m^2
v2=(v1*a)/A//Speed of flow through the nozzle in m/s

//Output
printf('Speed of flow through the nozzle is %3.1f m/s',v2)
