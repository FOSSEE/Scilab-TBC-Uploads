clc
// Intialization of variables
V2 = 25.8 //ft/s
g = 32.2 //ft/s^2
hL = 51.6 //ft
f = 0.019
l = 100 //ft
D = 8/12 //ft
SKL = 10
// Calculations
hP = (V2^2/(2*g))+ hL //ft
V = (2*g*hP/(1+(f*l/D)+SKL) )^0.5 //ft/s
Re = 4240*V
A = %pi*(D^2)/4 //ft^2 
Q = V*A //ft^3/s
// Results
printf ("the value of the flow rate is %.2f ft^3/s",Q)
