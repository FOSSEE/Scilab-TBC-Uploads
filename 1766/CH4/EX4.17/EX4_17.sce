clc;funcprot(0);......//Example 4.17
//Initialization of variables
A=2;...........//Area of the square plate in m
Lc=0.25;........//charecteristic length 
Tw=224;........//Temperature of square plate in degrees celcius
Ta=30;.............//Temperature air in degrees celcius
v=2.7*10^-5;.......//Viscosity in m^2/s
K=0.032;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.71;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
Gr=(g*B*(Tw-Ta)*Lc^3)/(v^2);.......//Grashoff No
//For bottom of the plane 
Nu=0.27*[(Gr*Pr)]^0.25;............//Nusselt no for bottom plate
h=(Nu*K)/(Lc);.........//Heat transfer co-efficient  for bottom plate in W/m^2 K
//For top of the plane 
Nut=0.14*[(Gr*Pr)]^(1/3);............//Nusselt no for top plate
ht=(Nut*K)/(Lc);.........//Heat transfer co-efficient for top plate in W/m^2 K
Q=2*(h+ht)*(Tw-Ta);.........//Total convection heat loss in W
disp(Q,"Total convection heat loss in W:")
