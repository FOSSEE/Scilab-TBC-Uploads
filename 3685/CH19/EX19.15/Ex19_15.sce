clc
// Given that
m = 1 // Mass flow rate in kg/s
r = 2 // Prssure ratio of blower 
t1 = 70 // Inlet temperature in degree centigrade
p1 = 1 // Inlet pressure in bar
R = 0.29 // Gas constant in kJ/kgK
x = 0.7 // Reduction in pressure ratio and intake volume 
gama = 1.4
printf("\n Example 19.15\n")
T1 = t1+273
V = m*R*T1/(p1*100)
P = V*(p1*r-p1)*100
p2 = p1*((1/x)^(gama))
V2 = x*V
P_ = (gama/(gama-1))*(p1*100*V)*((p2/p1)^((gama-1)/gama)-1) + V2*(p1*r-p2)*100

printf("\n Power required to drive the blower = %f kW,\n Power required = %f kW",P,P_)
// The answers given in the book vary due to round off error
 
