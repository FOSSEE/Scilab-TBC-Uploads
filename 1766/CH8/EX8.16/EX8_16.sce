clc;funcprot(0);//Example 8.16
//Initilisation of Variables
mc=8;....//Mass flow rate of water in kg/s
Tci=30;......//Inlet temparature of water in degrees celcius
Tco=160;......//Outlet temparature of water in degrees celcius
mh=25;....//Mass flow rate of flue gas in kg/s
Thi=425;......//Inlet temparature of flue gas in degrees celcius
U=60*10^-3;..........//Overall heat transfer coefficient in W/m^2K
Cpc=4.2;....//Specific heat of water in kJ/kgK
Cph=1;....//Specific heat of flue gas in kJ/kgK 
//calculations
Tho=Thi-((mc/mh)*(Cpc/Cph)*(Tco-Tci));....//Outlet temparature of flue gas in degrees celcius
LMTDc=((Thi-Tco)-(Tho-Tci))/log((Thi-Tco)/(Tho-Tci));......//Log mean temparature diffrence of steam in counter flow arrangement in K
A=(mc*Cpc*(Tco-Tci))/(U*LMTDc);..//Heat transfer area required for counter flow arrancement in m^2
Ch=mh*Cph;....//Heat capacity of air by counter flow kW/K
Cc=mc*Cpc;....//Heat capacity of water by counter flow kW/K
E=(mc*Cpc*(Tco-Tci))/(Ch*(Thi-Tci));....//Effectiveness required for counter flow arrancement
disp(Tho,"Outlet temparature of flue gas in degrees celcius:")
disp(E,"Effectiveness required for counter flow arrancement:")
disp(A,"Heat transfer area required for counter flow arrancement in m^2:")

