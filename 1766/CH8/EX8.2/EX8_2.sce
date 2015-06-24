clc;funcprot(0);//Example 8.2
//Initilisation of Variables
mh=10;......//mass flow rate of air
Thi=300;.....//initial temparature of air in degrees celcius
Tho=80;....//Outer temparature of air in degrees celcius
n=400;......//Number of tubes
d=0.04;....//Diameter of tubes in mm
Tci=30;......//Inlet temparature of cooling water in degrees celcius
Tco=90;......//Outlet temparature of cooling water in degrees celcius
hi=200;....//Inside heat transfer coefficient in W/m^2 K
ho=650;.....//Outside heat transfer coefficient in W/m^2 K
Cph=1.0;....//Specific heat of water in kJ/kgK
Cpc=4.2;....//Specific heat of cold fluid in kJ/kgK
h=400;.....//Heat transfer coefficient in exchanger in W/m^2 K
//calculations
mc=(mh*Cph*(Thi-Tho))/(Cpc*(Tco-Tci));.....//Mass flow rate of water in kg/s
Q=mh*Cph*(Thi-Tco);.......//Heat transfer rate in kW
U=(hi*ho)/(ho+hi);.....//Overall heat transfer coefficient in W/m^2C
LMTD=((Thi-Tco)-(Tho-Tci))/log((Thi-Tco)/(Tho-Tci));......//Log mean temparature diffrence of all fluids in K
L=(Q*1000)/(%pi*d*h*U*LMTD);.......//Length of exchanger in m
disp(mc,"(i)Mass flow rate of water in kg/s:")
disp("(ii)Since Tco>Tho, the analysis for the counter flow heat exchanger is applicable.")
disp(Q,"(iii)Heat transfer rate in kW:")
disp(L,"(iv)Length of exchanger in m:")
