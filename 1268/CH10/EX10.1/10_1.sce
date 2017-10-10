clc;
disp("Example 10.1")
G=50 // in kg/m^2/s
L=100 // length in m
d=0.075 // diameter in m
T=298 // in kelvin
mew=1e-5 //viscosity
p=1.1e5 // pressure of air
m=16 // molecular mass
Re=d*G/mew
f=0.0014+(0.125/(Re^0.32))
p1=(2*f*L*G*G*8314*T/(d*m)+(p^2))^0.5
disp(p1,"Pressure is ")
disp(" Pascals")
printf("Pressure is %.2f Pa\n",p1);

