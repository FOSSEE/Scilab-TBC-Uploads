//ques8
//Economics of Replacing a Valve by a Turbine
clear
clc

//state 1
P1=5//pressure in MPa
T1=115//temperature in K
//from table
h1=232.3//heat in kJ/kg
s1=4.9945//entropy in kJ/kg.K
d1=422.15//density

//state 2
P2=1//pressure in MPa
s2=4.9945//entropy s2=s1
h2=222.8//heat in kJ/kg from table
Vs=0.280//volume flow rate in m^3
ms=d1*Vs//mass per second in Kg/sec
// Ein=Eout so Wsout=ms*(h1-h2)
Ws=ms*(h1-h2);//power output of turbine in kJ/sec
printf('The power output of the turbine = %.0f kW \n',Ws);
APP=Ws*8760//kWh/yr annual power production
APS=APP*0.075//$/kWh Annual power savings
printf(' Annual power savings = $ %.0f/yr ',APS);

