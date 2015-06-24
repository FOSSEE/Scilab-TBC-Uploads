clc;funcprot(0);......//Example 4.8
//Initialization of variables
D=0.2*10^-3;.........//Diameter of the wire in m
L=1;...........//Length of the wire in m
Tw=60;........//Temperature of wire in degrees celcius
Ta=20;.............//Temperature under the water in degrees celcius
v=16.96*10^-6;.......//Viscosity in m^2/s
K=26.56;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.7;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
Grd=(g*B*(Tw-Ta)*D*D*D)/(v^2);.......//Grashoff No
Nud=1.02*(Grd*Pr)^(0.148);............//Nusselt no
h=(Nud*K*10^-3)/(D);.........//Heat transfer co-efficient in W/m^2 K
Q=h*(%pi*D)*(Tw-Ta);.........//Rate of heat loss in W
disp(Q,"Rate of heat loss in W:")
