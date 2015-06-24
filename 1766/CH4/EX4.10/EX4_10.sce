clc;funcprot(0);......//Example 4.10
//Initialization of variables
D=0.5;.........//Diameter of the Cylinder in m
L=1;...........//Length of the cylinder in m
N=300;.......//Speed of metal cylinder in rpm
Tw=65;........//Temperature of Cylinder in degrees celcius
Ta=15;.............//Temperature under the water in degrees celcius
v=16.96*10^-6;.......//Viscosity in m^2/s
K=27.56;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.7;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
Re=((2*%pi*N)/60)*((%pi*D^2)/v)
Grd=(g*B*(Tw-Ta)*D*D*D)/(v^2);.......//Grashoff No
Nud=0.11*[(0.5*(Re)^2)+(Grd*Pr)]^0.35;............//Nusselt no
h=(Nud*K*10^-3)/(D);.........//Heat transfer co-efficient in W/m^2 K
Q=h*(%pi*D*L)*(Tw-Ta);.........//Rate of heat loss in W/m
disp(Q/1000,"Rate of heat transfer in kW/m:")
