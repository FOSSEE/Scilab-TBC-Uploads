clc;funcprot(0);//Example 8.15
//Initilisation of Variables
Tci=70;......//Inlet temparature of air in degrees celcius
Tco=250;......//Outlet temparature of air in degrees celcius
mc=10;....//Mass flow rate of air in kg/s
Thi=450;......//Inlet temparature of gas in degrees celcius
Tho=200;......//outet temparature of gas in degrees celcius
U=150*10^-3;..........//Overall heat transfer coefficient in W/m^2K
Cpc=1.0;....//Specific heat of air in kJ/kgK
Cph=1.2;....//Specific heat of gas in kJ/kgK 
//calculations
LMTDc=((Thi-Tco)-(Tho-Tci))/log((Thi-Tco)/(Tho-Tci));......//Log mean temparature diffrence of steam in counter flow arrangement in K
Q=mc*Cpc*(Tco-Tci);....//Heat transfer gas in kW
R1=(Thi-Tho)/(Tco-Tci);....//Resistanfce from counter flow 
R2=(Tco-Tci)/(Thi-Tci);....//Resistanfce from counter flow
F=0.65;......//From the graph F and R1, R2 when air is mixed
A=Q/(F*U*LMTDc);....//Surface area of heat exchanger when air is un mixed in m^2
F1=0.82;...//From the graph F and R1, R2 where air and gas are unmixed
A1=Q/(F1*U*LMTDc);....//Surface area of heat exchanger when air and gas is un mixed in m^2
disp(A,"Surface area of heat exchanger when air is un mixed in m^2:")
disp(A1,"Surface area of heat exchanger when air and gas is un mixed in m^2:")
