//Chapter-12, Example 12.6, Page 512
//=============================================================================
clc
clear

//INPUT DATA
T=120;//Saturated steam temperature in degree C
U=1800;//Heat transfer coefficient in W/m^2.K
m=1000;//mass flow rate of water in kg/h
t1=20;//Inlet temperature of water in degree C
t2=90;//Outlet tmperature of water in degree C
hfg=2200;//Enthalpy of steam in kJ/kg
c=4186;//Specific het of water in J/kg.K

//CALCULATIONS
Tlm=(((T-t1)-(T-t2))/(log((T-t1)/(T-t2))));//LMTD in a condenser in degree C
Q=((m/3600)*c*(t2-t1));//Rate of heat transfer in W
A=(Q/(U*Tlm));//Surface area of heat exchanger in m^2 
ms=((Q*3600)/(hfg*1000));//Rate of condensation of steam in kg/h

//OUTPUT
mprintf('Surface area of heat exchanger is %3.2f m^2 \n Rate of condensation of steam is %3.1f kg/h',A,ms)

//=================================END OF PROGRAM==============================
