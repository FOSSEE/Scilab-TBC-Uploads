clc;funcprot(0);//Example 8.3
//Initilisation of Variables
Tci=40;......//Inlet temparature of oil in degrees celcius
Tco=80;......//Outlet temparature of oil in degrees celcius
Tw=100;....//Uniform temparature of tube in degrees celcius
mc=3/60;....//Flow rate of water in kg/s
di=0.025;.....//Inner diameter of tube in m
U=21;..........//Overall heat transfer coefficient in W/m^2C
Cpo=2050;....//Specific heat of oil in J/kgK
//calculations
Q=mc*Cpo*(Tco-Tci);.......//Heat transfer rate in kW
LMTD=((Tw-Tci)-(Tw-Tco))/log((Tw-Tci)/(Tw-Tco));......//Log mean temparature diffrence of all fluids in K
A=Q/(U*LMTD);.....//Area of the tube in m^2
L=A/(%pi*di);...//Length of the tube in m
disp(L,"Length of the tube in m:")
