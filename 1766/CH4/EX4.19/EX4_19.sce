clc;funcprot(0);......//Example 4.19
//Initialization of variables
D=0.15;.........//Diameter of the steel shaft in m
L=1;..........//Length of the steel shaft in m
N=5;.......//Speed of shaft in rpm
Tw=95;........//Temperature of shaft in degrees celcius
Ta=25;.............//Temperature of air degrees celcius
v=1.94*10^-5;.......//Viscosity in m^2/s
K=0.0279;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.71;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(60+273);........//Temp inverse in K^-1
w=(2*%pi*N)/60;......//Rotation speed of shraft in rad/s
Re=w*(%pi*0.075^2)/v
Gr=(g*B*(Tw-Ta)*D*D*D)/(v^2);.......//Grashoff No
Nu=0.11*[(0.5*(Re)^2)+(Gr*Pr)]^0.35;............//Nusselt no
h=(Nu*K)/(D);.........//Heat transfer co-efficient in W/m^2 K
Q=h*(%pi*D*L)*(Tw-Ta);.........//Rate of convection heat loss in W
disp(Q,"Rate of convection heat loss in W:")
