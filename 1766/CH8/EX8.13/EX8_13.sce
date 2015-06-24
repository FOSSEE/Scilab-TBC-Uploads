clc;funcprot(0);//Example 8.13
//Initilisation of Variables
Tci=20;......//Inlet temparature of fluid in degrees celcius
Tco=90;......//Outlet temparature of fluid in degrees celcius
Thi=200;......//Inlet temparature of steam in degrees celcius
Tho=100;......//Outlet temparature of steam in degrees celcius
U=300;..........//Overall heat transfer coefficient in W/m^2K
A=12;....//Area of tube in m
//calculations
LMTDc=((Thi-Tco)-(Tho-Tci))/log((Thi-Tco)/(Tho-Tci));......//Log mean temparature diffrence of steam in counter flow arrangement in K
R2=(Tho-Thi)/(Tci-Thi);....//Resistanfce from counter flow 
R1=(Tci-Tco)/(Tho-Tci);....//Resistanfce from counter flow
F=0.85;......//From the graph F and R1,R2
Q=LMTDc*U*F*A;....//Heat transfer rate between the fluids in kW
disp(Q/1000,"Heat transfer rate between the fluids in kW:")
