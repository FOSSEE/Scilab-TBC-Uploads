clc;funcprot(0);//Example 8.5
//Initilisation of Variables
Tci=280;......//Inlet temparature of water in K
Thi=375;......//Inlet temparature of oil in K
Tho=350;......//Outlet temparature of oil in K
mc=0.201;....//Flow rate of water in kg/s
mh=0.5;.....//Flow rate of oil in kg/s
U=250;..........//Overall heat transfer coefficient in W/m^2C
Cph=2090;....//Specific heat of oil in J/kgK
Cpc=4177;....//Specific heat of water in J/kgK 
//calculations
Q=mh*Cph*(Thi-Tho);......//Heat loss by hot fluid in W
Tco=Tci+(Q/(mc*Cpc));.....//Outlet temparature of water in K
LMTD=((Thi-Tco)-(Tho-Tci))/log((Thi-Tco)/(Tho-Tci));......//Log mean temparature diffrence of all fluids in K
A=Q/(LMTD*U);......//Area of heat exchanger in counter flow in m^2
LMTD1=((Thi-Tci)-(Tho-Tco))/log((Thi-Tci)/(Tho-Tco));......//Log mean temparature diffrence of all fluids in K
A1=Q/(LMTD1*U);......//Area of heat exchanger in parallel flow in m^2
A2=((A1-A)*100)/A1;....//The area required is lower for counter flow compared with parallel flow arrangement by approximately
disp(A,"Area of heat exchanger in counter flow in m^2:")
disp(A1,"Area of heat exchanger in parallel flow in m^2:")
disp(round(A2),"The area required is lower for counter flow compared with parallel flow arrangement by approximatelyin %:")
