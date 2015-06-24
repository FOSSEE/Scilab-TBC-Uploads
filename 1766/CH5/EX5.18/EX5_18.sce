clc;funcprot(0);//Example 5.18
//Initilisation of Variables
Tmi=10;.....//Inlet Temperature of mercury in degrees celcius
Tmo=30;.....//Oulet Temperature of mercury in degrees celcius
D=0.02;...//Diameter of tube in m
m=2;........//Mass flow rate of mercury in kg/s
Tw=60;......//Temperature of tube wall at degrees celcius
Tm=(Tmi+Tmo)/2;......//Average temperature of water in degrees celcius
//Properties of water at Tm
rho=13550;......//Density in kg/m^3
mu=0.114*10^-6;......//Viscocity in m^2/s
Pr=0.0272;........//Prandtl no
K=7.9;........//Thermal conductivity in W/mK
Cp=0.139;.....//Specific heat capacity in kJ/kgK
//calculation
Re=(4*m)/(%pi*D*rho*mu);..............//Reynolds no
Nu=5+(0.025*(Re*Pr)^0.8);...........//Nusselt number
h=(Nu*K)/D;.........//Heat transfer co efficient in W/m^2K
Q=m*Cp*[Tmo-Tmi];........//Heat transfer rate from wall to air in kW 
L=(Q*10^3)/(h*%pi*D*(Tw-Tm));.......//Length of the tube in m
disp(L,"Length of the tube in m:")
