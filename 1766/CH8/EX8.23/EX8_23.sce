clc;funcprot(0);//Example 8.23
//Initilisation of Variables
Tw=100;.....//Temparature at water continusly evoperate in degrees celcius
LH=2255;.....//Latent heat of vapourisation in kJ/kg
ma=600/3600;....//Flow rate of hot air in kg/s
Tai=200;......//Inlet temparature of hot air in K
Tao=125;......//Outlet temparature of hot air in K
U=50;..........//Overall heat transfer coefficient in W/m^2C
Cpa=1;....//Specific heat of air in kJ/kgK
//calculations
LMTD=((Tai-Tw)-(Tao-Tw))/log((Tai-Tw)/(Tao-Tw));......//Log mean temparature diffrence of steam in parallel flow arrangement in K
A=((ma)*Cpa*(Tai-Tao))/(U*LMTD);.....//Surface area of heat exchanger in m^2
mw=(ma*Cpa*(Tai-Tao))/LH;.....//Rate of evaporation in kg/s
disp(A,"Surface area of heat exchanger in m^2:")
disp(mw,"Rate of evaporation in kg/s:")
