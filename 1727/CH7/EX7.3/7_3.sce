clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
Q=0.45/(60*1000) //m^3/s
d=0.003 //m
depth=0.95 //m
alpha=2
len=1.25 //m
//calculations
A=%pi/4 *d^2
V=Q/A
nu= (depth - alpha*V^2 /(2*g))*g*d^2 /(32*V*len)
Re=V*d/nu
//results
if Re<2000 then
    printf("Flow is laminar")
else
    printf("Flow is not laminar")
end
