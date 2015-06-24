clc;funcprot(0);//Example 8.14
//Initilisation of Variables
Do=0.025;....//Outer diameter of tube in m
mh=7.0;....//Mass flow rate of solution in kg/s
Tci=10;......//Inlet temparature of water in degrees celcius
mc=6.7;....//Mass flow rate of water in kg/s
Thi=70;......//Inlet temparature of solution in degrees celcius
Tho=40;......//outet temparature of solution in degrees celcius
Uo=600*10^-3;..........//heat transfer coefficient of outer surface in W/m^2K
Cpc=4.18;....//Specific heat of water in kJ/kgK
Cph=3.81;....//Specific heat of solution in kJ/kgK 
n=100;....//number of tubes
//calculations
Tco=Tci+((mh/mc)*(Cph/Cpc)*(Thi-Tho));....//Outlet temparature of water in degrees celcius
//
LMTDp=((Thi-Tci)-(Tho-Tco))/log((Thi-Tci)/(Tho-Tco));......//Log mean temparature diffrence of steam in parallel flow arrangement in K
Q=mh*Cph*(Thi-Tho);.....//Rate of heat flow  from solution to water
A=Q/(Uo*LMTDp);.....//Heat transfer area of parallel flow arrangement in m^2
Lp=A/(%pi*Do);.....//Length of exchanger  of parallel flow arrangementin m
//
LMTDc=((Thi-Tco)-(Tho-Tci))/log((Thi-Tco)/(Tho-Tci));......//Log mean temparature diffrence of steam in counter flow arrangement in K
Ac=Q/(Uo*LMTDc);.....//Heat transfer area of counter flow arrangement in m^2
Lc=Ac/(%pi*Do);.....//Length of exchanger of counter flow arrangement in m
//
R1=(mc*Cpc)/(mh*Cph);....//Resistanfce from counter flow 
R2=(Tco-Tci)/(Thi-Tci);....//Resistanfce from counter flow
F=0.96;......//From the graph F and R1 and R2
An=Q/(F*Uo*LMTDc);....//Heat transfer area with 2 shell passes and 100 tubes passes
Ln=An/(%pi*n*Do);.....//Length of exchanger of counter flow arrangement in m
//
Ace=Q/(F*Uo*LMTDc);....//Heat transfer area with 2 shell passes and 100 tubes passes
disp(Lp,"Heat transfer surface area required for Parallel flow arrangement:")
disp(Lc,"Heat transfer surface area required for Counter flow arrangement:")
disp(Ln,"Heat transfer surface area required Two shell and 100 tube passes:")
disp(Ace,"Heat transfer surface area required for Cross flow exchanger:")
