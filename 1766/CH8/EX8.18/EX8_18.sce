clc;funcprot(0);//Example 8.18
//Initilisation of Variables
Tci=35;......//Inlet temparature of water in degrees celcius
Tco=93;......//Outlet temparature of water in degrees celcius
mc=230;....//Mass flow rate of water in kg/s
mh=230;....//Mass flow rate of oil in kg/s
Thi=175;......//Inlet temparature of oil in degrees celcius
Cpc=4.18;....//Specific heat of water in kJ/kgK
Cph=2.1;....//Specific heat of oil in kJ/kgK 
U1=570*10^-3;..........//heat transfer coefficient of Exchanger 1 in W/m^2K
U2=370*10^-3;..........//heat transfer coefficient of exchanger 2 in W/m^2K
A1=0.47;....//Surface area of heat exchanger 1 in m^2
A2=0.94;....//Surface area of heat exchanger 2 in m^2
//calculations
Q=mc*Cpc*(Tco-Tci);....//Heat transfer water in kW
Tho=Thi-(mc/mh)*(Cpc/Cph)*(Tco-Tci);......//Outlet temparature of cool air in degrees celcius
LMTD=((Thi-Tco)-(Tho-Tci))/log((Thi-Tco)/(Tho-Tci));......//Log mean temparature diffrence of steam in counter flow arrangement in K
Q1=U1*A1*LMTD;.....//Heat exchanger 1
Q2=U2*A2*LMTD;.....//Heat exchanger 2
disp(Q1,"Heat exchanger 1:")
disp(Q2,"Heat exchanger 2:")
disp(Q2,"Therfore, Heat exchanger 2 is selected")
