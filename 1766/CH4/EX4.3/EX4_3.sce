clc;funcprot(0);......//Example 4.3
//Initialization of variables
L=4;........//Vertical height of the plate in m
q=800;..........//Solar radiation in W/m^2
alpha=1;......//100% absorptivity
Ta=30;.......//Atmospheric temperature in degree celsius
g=9.81;....//Gravitational constant
Pr=0.697;......//Prandlt no
v=20.8*10^-6;.......//Viscosity in m^2/s
K=0.03;.......//Thermal conductivity in W/mK
//Calculations
h1=8;.......//Assumed convective heat transfer co efficient in W/m^2 K
Tw=Ta+(q/h1);.......//Plate temperature
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
Gr=(g*B*q*L*L*L*L)/(K*v^2);.......//Grashoff No
Nu=0.17*((Gr*Pr)^(0.22));............//Nusselt no
h=(Nu*K)/L;.........//Heat transfer co-efficient in W/m^2 K
havg=h*1.136;....//Avg heat transfer co-efficient in W/m^2 K
Tw1=Ta+(q/havg);........//Wall temperature in degree Celsius
disp(Tw1,"Wall temperature in degree Celsius")
//The answer obtained in the textbook is wrong since the nusslet number has been wrongly calculated
