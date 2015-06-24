clc;funcprot(0);......//Example 4.18
//Initialization of variables
L=0.04;........//Depth of closed pan in m 
Tw=105;........//Temperature of square plate in degrees celcius
Ta=15;.............//Temperature air in degrees celcius
v=0.478*10^-6;.......//Viscosity in m^2/s
K=0.657;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=3.02;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
Gr=(g*B*(Tw-Ta)*L^3)/(v^2);.......//Grashoff No
Nu=74.24;............//Nusselt no
h=(Nu*K)/(L);.........//Heat transfer co-efficient  for bottom plate in W/m^2 K
Q=h*(%pi*L/4)*(Tw-Ta);.......//Rate of heat transfer from the burner to the water in W
disp(Q,"Rate of heat transfer from the burner to the water in W:")
