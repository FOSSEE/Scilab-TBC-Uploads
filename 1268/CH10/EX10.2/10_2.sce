clc;
disp("Example 10.2")
G=50 // in kg/m^2/s
L=1000 // length in m
d=0.075 // diameter in m
T=298 // in kelvin
mew=1e-5 //viscosity
p2=1.1e5 // pressure of air
m=16 // molecular mass
Re=d*G/mew
f=0.0014+(0.125/(Re^0.32))
p1=(2*f*L*G*G*8314*T/(d*m)+(p2^2))^0.5
if((p1/p2)>1) then
    p1=(2*f*L*G*G*8314*T/(d*m)+(p2^2)+(2*G*G*8314*T*log(p1/p2)/m))^0.5
end
disp(p1,"Pressure is ")
disp(" Pascals")

