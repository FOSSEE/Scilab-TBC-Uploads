clc;funcprot(0);......//Example 4.14
//Initialization of variables
D=0.02;...........//Diameter of the tube in m
L=1;..........//Length of tube in m
P=1;.........//Pressure of air in bar
U=0.25;.......//Velocity of air in m/s
Tw=130;........//Temperature of tube in K
Ta=30;.............//Temperature of air in K
v=21.09*10^-6;.......//Viscosity in m^2/s
K=0.03047;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.692;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
Re=(U*D)/v;..........//Reynolds number
Gr=(g*B*(Tw-Ta)*D^3)/(v^2);.......//Grashoff Number
mub=18.63*10^-6;.......//Dynamic viscosity at temperature Ta
mus=23.29*10^-6;.......//Dynamic viscosity at temperature Tw
Gz=Re*Pr*(D/L);.........//Graetz number 
Nu=1.75*(mub/mus)^0.14*[Gz+(0.012*(Gz*Pr^(1/3))^(4/3))]^(1/3);............//Nusselt no
h=(Nu*K)/(D);.........//Heat transfer co-efficient in W/m^2 K
Q=h*(%pi*D*L)*(Tw-Ta);.........//Rate of heat loss in W/m
disp(Q,"Rate of heat transfer in W/m:")
