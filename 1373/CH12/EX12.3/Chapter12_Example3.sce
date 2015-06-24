//Chapter-12, Example 12.3, Page 509
//=============================================================================
clc
clear

//INPUT DATA
mh=10000;//Mass flow rate of oil in kg/h
ch=2095;//Specific heat of oil J/kg.K
Thi=80;//Inlet temperature of oil in degree C
Tho=50;//Outlet temperature of oil in degree C
mc=8000;//Mass flow rate of water in kg/h
Tci=25;//Inlet temperature of water in degree C
U=300;//Overall heat ransfer coefficient in W/m^2.K
cc=4180;//Specific heat of water in J/kg.K

//CALCULATIONS
Q=(mh*ch*(Thi-Tho));//Heat transfer rate in W
Tco=((Q/(mc*cc))+Tci);//Outlet temperature of water in degree C
T=(Thi-Tco);//Temperature difference between oil inlet temperature and water outlet temperature in degree C
t=(Tho-Tci);//Temperature difference between oil outlet temperature and water inlet temperature in degree C
A=(((Q/U)*log(t/T))/(3600*(t-T)));//Area of heat exchanger in m^2

//OUTPUT
mprintf('Area of heat exchanger is %3.2f m^2',A)

//=================================END OF PROGRAM==============================
