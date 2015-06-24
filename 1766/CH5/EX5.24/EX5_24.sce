clc;funcprot(0);//Example 5.24
//Initilisation of Variables
Tm=45;.....//Inlet Temperature of water in degrees celcius
a=0.02;......//Length of the tube in m
b=0.03;.......//width of the tube in m
Tw=85;........//Temperatube of tube wall in degrees celcius
//Properties of water at 55 d c
rho=985.5;......//Density in kg/m^3
mu=0.517*10^-6;......//Viscocity in m^2/s
Pr=3.26;........//Prandtl no
K=0.654;........//Thermal conductivity in W/mK
Cp=4.18;.....//Specific heat capacity in kJ/kgK
Um=2;.......//Velocity of water in m/s
//calculation
De=(4*a*b)/(2*(a+b));..........//Equivalent diameter of duct in m
Re=(Um*De)/mu;.........//Reynolds number
Nu=0.023*Re^0.8*Pr^0.4;..........//Nusselt number
h=(Nu*K)/De;.........//Convection heat transfer coefficient in W/m^2K
disp(h,"Convection heat transfer coefficient in W/m^2K:")
