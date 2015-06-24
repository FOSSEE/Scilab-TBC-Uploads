clc;funcprot(0);......//Example 4.9
//Initialization of variables
D=0.06;.........//Diameter of the bulb in m
Tw=120;........//Temperature of bulb in degrees celcius
Ta=20;.............//Temperature under the water in degrees celcius
v=20.2*10^-6;.......//Viscosity in m^2/s
K=29.64*10^-3;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.695;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
Grd=(g*B*(Tw-Ta)*D*D*D)/(v^2);.......//Grashoff No
Nud=2+(0.5*(Grd*Pr)^(1/4));............//Nusselt no
h=(Nud*K)/(D);.........//Heat transfer co-efficient in W/m^2 K
Q=h*(%pi*D^2)*(Tw-Ta);.........//Rate of heat loss in W
disp(Q,"Rate of heat loss in W:")
