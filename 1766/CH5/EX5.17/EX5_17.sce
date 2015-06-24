clc;funcprot(0);//Example 5.17
//Initilisation of Variables
Tmi=20;.....//Inlet Temperature of water in degrees celcius
Tmo=60;.....//Oulet Temperature of water in degrees celcius
D=0.05;...//Diameter of tube in m
U=10;........//Velocity of water in m/s
Tw=80;......//Temperature of tube wall at degrees celcius
Tm=(Tmi+Tmo)/2;......//Average temperature of water in degrees celcius
//Properties of water at Tm
rho=995;......//Density in kg/m^3
mu=0.659*10^-6;......//Viscocity in m^2/s
Pr=4.34;........//Prandtl no
K=628*10^-3;........//Thermal conductivity in W/mK
Cp=0.998;.....//Specific heat capacity in kJ/kgK
//calculation
Re=(U*D)/mu;..............//Reynolds no
Nu=0.023*Re^0.8*Pr^0.4;...........//Nusselt number
h=(Nu*K)/D;.........//Heat transfer co efficient in W/m^2K
m=((%pi*D^2)/4)*U*rho;............//Mass flow rate in kg/s
Q=m*Cp*[Tmo-Tmi];........//Heat transfer rate from wall to air in kW 
L=Q/(h*%pi*D*(Tw-Tm));.......//Length of the tube in m
disp(h,"(i)Heat transfer co efficient in W/m^2K:")
disp(Q,"(ii)Heat transfer rate from wall to air in kW:")
disp(L*1000,"(iii)Length of the tube in m:")
