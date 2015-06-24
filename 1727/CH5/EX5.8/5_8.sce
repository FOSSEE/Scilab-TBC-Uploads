clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
Q=0.09 //m^3/s
d1=0.12 //m
d2=0.2 //m
P1=80 //kN/m^2
P2=120 //kN/m^2
//calculations
V1=Q/(%pi/4 *d1^2)
TE1 = P1*10^3 /(rho*g) + V1^2 /(2*g)
V2= d1^2 /d2^2 *V1
TE2= P2*10^3 /(rho*g) + V2^2 /(2*g)
//results
if TE1>TE2 then
    printf("Flow is from section 1 to section 2")
else
    printf("Flow is from section 2 to section 1")
end
