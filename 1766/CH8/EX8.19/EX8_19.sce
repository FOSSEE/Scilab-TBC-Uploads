clc;funcprot(0);//Example 8.19
//Initilisation of Variables
Tci=30;......//Inlet temparature of water in degrees celcius
Tco=100;....//Outlet temparature of water in degrees celcius
Th=120;......//Temparature of oil in degrees celcius
mc=2.5;....//Flow rate of water in kg/s
U=2000;..........//Overall heat transfer coefficient in W/m^2K
Cpc=4.2;....//Specific heat of water in kJ/kgK
Rf=0.0002;....//Fouling factor in m^2*K/W
//calculations
Qw=mc*Cpc*(Tco-Tci);....//Heat transfer water in kW
LMTD=((Th-Tci)-(Th-Tco))/log((Th-Tci)/(Th-Tco));......//Log mean temparature diffrence of steam in counter flow arrangement in K
A=(Qw*10^3)/(U*LMTD);....//Surface area of heat exchanger in m^2
Uscale=1/(Rf+(1/U));....//Overall heat transfer coefficient in presence of scaling factor in W/m^2K
LMTD1=(Qw*1000)/(Uscale*A);....//Log mean temparature diffrence of steam in counter flow arrangement in presence scaling factor in K
//By Trail & Error method
Tco1=74.5;.....//Outlet temparature of water in presence of scaling factor in degrees celcius
disp(Tco1,"Outlet temparature of water in presence of scaling factor in degrees celcius:")
