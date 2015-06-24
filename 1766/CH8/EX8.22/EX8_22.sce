clc;funcprot(0);//Example 8.22
//Initilisation of Variables
Toi=90;......//Inlet temparature of oil in K
Too=60;......//Outlet temparature of oil in K
mo=980;....//Flow rate of oil in kg/s
Twi=30;......//Inlet temparature of oil in K
mw=980;....//Flow rate of water in kg/s
U=30;..........//Overall heat transfer coefficient in W/m^2C
Cpw=4.2;....//Specific heat of oil in kJ/kgK
Cpo=2;....//Specific heat of water in kJ/kgK 
//calculations
Two=Twi-(mo/mw)*(Cpo/Cpw)*(Too-Toi);......//Outlet temparature of cool air in degrees celcius
LMTDp=((Toi-Twi)-(Too-Two))/log((Toi-Twi)/(Too-Two));......//Log mean temparature diffrence of steam in parallel flow arrangement in K
Q=(mo/3600)*Cpo*(Toi-Too);......//Heat loss by hot fluid in W
Ap=Q/(U*LMTDp);....//Heat transfer area of parallel flow in m^2
LMTDc=((Toi-Two)-(Too-Twi))/log((Toi-Two)/(Too-Twi));......//Log mean temparature diffrence of steam in counter flow arrangement in K
Ac=Q/(U*LMTDc);....//Heat transfer area of parallel flow in m^2
disp(Ap,"Surface area required for parallel flow in m^2:")
disp(Ac,"Surface area required for counter flow in m^2:")
