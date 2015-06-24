clc
clear
//input data
P0=800//Inlet pressure of hot gas in kPa
T1=973//Inlet temperature of hot gas in K
P2=100//Final pressure of hot gas in kPa
a1=73//Nozzle angle in degree
m=35//Mass flow rate in kg/s
ns=0.9//Nozzle efficiency
Cp=1.005//Specific heat of gas at constant pressure in kJ/kg.K
r=1.4//Ratio of specific heats of air

//calculations
b1=atand(tand(a1)/2)//Inlet angle of the rotor blade in degree
b2=b1//Outlet angle of the rotor blade in degree
pi=2/tand(a1)//Flow coefficient
psil=pi*(tand(b1)+tand(b2))//Blade loading coefficient
dh=ns*Cp*T1*(1-(P2/P0)^((r-1)/r))//Change in enthalpy in kJ/kg
W=m*dh*10^-3//Power developed in MW

//output
printf('(a)Rotor blade angles\n    Inlet angle of the rotor blade is %3.2f degree\n    Outlet angle of the rotor blade is %3.2f degree\n(b)Flow coefficient is %3.3f\n(c)Blade loading coefficient is %3.f\n(d)Power developed is %3.1f MW',b1,b2,pi,psil,W)
