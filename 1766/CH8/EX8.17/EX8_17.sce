clc;funcprot(0);//Example 8.17
//Initilisation of Variables
Thi=66;......//Initial temparature of Hot air in degrees celcius
Tho=38;......//Finale temparature of Hot air in degrees celcius
mh=1.25;....//Mass flow rate of Hot air in kg/s
Tci=15.5;......//Inlet temparature of cool air in degrees celcius
mc=1.6;....//Mass flow rate of cool air in kg/s
T1ho=26.5;......//Finale temparature of Hot air in case 2 degrees celcius
Cpc=1.0;....//Specific heat of cool air in kJ/kgK
Cph=1.0;....//Specific heat of hot air in kJ/kgK 
//calculations
Tco=(mh/mc)*(Thi-Tho)+Tci;......//Outlet temparature of cool air in degrees celcius
Q=mh*Cph*(Thi-Tho);.....//Rate of heat flow  from hot air to water
LMTD=((Thi-Tco)-(Tho-Tci))/log((Thi-Tco)/(Tho-Tci));......//Log mean temparature diffrence of steam in counter flow arrangement in K
T1co=(mh/mc)*(Thi-T1ho)+Tci;......//Outlet temparature of cool air for case 2 in degrees celcius
Q1=mh*Cph*(Thi-T1ho);.....//Rate of heat flow  from hot air to water
LMTD1=((Thi-T1co)-(T1ho-Tci))/log((Thi-T1co)/(T1ho-Tci));......//Log mean temparature diffrence of steam in counter flow arrangement in K
Lr=(Q1*LMTD*10)/(Q*LMTD1);.....//Ratio of length of new heat exchanger to Length of original
disp(Lr,"Ratio of length of new heat exchanger to Length of original:")
