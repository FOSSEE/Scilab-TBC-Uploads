clc;funcprot(0);......//Example 4.11
//Initialization of variables
L=0.05;.........//Distance between 2 verticle plates in m
L1=1;...........//Length of the plate in m
W=1;...........//
Tw=100;........//Temperature of hot plate in degrees celcius
Ta=20;.............//Temperature of cold plate in degrees celcius
v=18.97*10^-6;.......//Viscosity in m^2/s
K=28.96;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.696;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
Gr=(g*B*(Tw-Ta)*L*L*L)/(v^2);.......//Grashoff No
Nu=0.42*(Gr*Pr)^0.25*(Pr)^0.012*(20)^-0.3;............//Nusselt no
h=(Nu*K)/(L);.........//Heat transfer co-efficient in W/m^2 K
Q=h*(L1*W)*(Tw-Ta);.........//Rate of heat loss in W
disp(Q/1000,"Rate of heat transfer in kW:")
