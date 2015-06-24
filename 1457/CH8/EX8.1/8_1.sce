clc
//Initialization of variables
s=0.85
nu=1.8*10^-5 //m^2 /s
d=10 //cm
flow=0.5 //L/s
//calculations
Q=flow*10^3
A=%pi*d^2 /4
V=Q/A
V=V/10^2
R=d*10^-2 *V/nu
//results
printf("reynolds number = %d .Hence the flow is laminar",R)
