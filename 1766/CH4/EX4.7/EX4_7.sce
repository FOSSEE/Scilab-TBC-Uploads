clc;funcprot(0);......//Example 4.7
//Initialization of variables
D=0.2;.........//Diameter of the pipe in m
L=1;...........//Length of the pipe in m
Tw=50;........//Temperature of pipe in degrees celcius
Ta=30;.............//Temperatyre under the water in degrees celcius
v=0.657*10^-6;.......//Viscosity in m^2/s
K=0.628;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=4.34;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
Grd=(g*B*(Tw-Ta)*D*D*D)/(v^2);.......//Grashoff No
Nud=0.125*(Grd*Pr)^(1/3);............//Nusselt no
h=(Nud*K)/D;.........//Heat transfer co-efficient in W/m^2 K
Q=h*(%pi*D)*(Tw-Ta);.........//Rate of heat loss in W
disp(Q/1000,"Rate of heat loss in kW:")
//The Answer arraived in textbook is found to be wrong when calculated
