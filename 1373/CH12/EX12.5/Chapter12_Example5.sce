//Chapter-12, Example 12.5, Page 511
//=============================================================================
clc
clear

//INPUT DATA
ch=2130;//Specific heat of oil in J/kg.K
T1=160;//Temperature of hot fluid (oil) at the entrance of heat exchanger in degree C
T2=60;//Temperature of hot fluid (oil) at the exit of heat exchanger in degree C
t1=25;//Temperature of cold fluid (water) at the entrance of heat exchanger in degree C
d=0.5;//Inner diameter of the tube in m
mc=2;//Mass flow rate of cooling water in kg/s
D=0.7;//outer annulus outer diameter in m
mh=2;//Mass flow rate of hot oil in kg/s
U=250;//Overall heat transfer coefficient in W/m^2.K
cc=4186;//Specific heat of water in J/kg.K

//CALCULATIONS
Q=(mh*ch*(T1-T2));// Required heat transfer rate in W
t2=((Q/(mc*cc))+t1);//Outer water temperature in degree C
T=T1-t2;//Change in temperature between inlet tmperature of hot fluid and outlet temperature of cold fluid in degree C
t=T2-t1;//Change in temperature between outlet tmperature of hot fluid and inlet temperature of cold fluid in degree C
Tlm=((T-t)/(log(T/t)));//Value of LMTD in degree C
L=(Q/(U*3.14*d*Tlm));//Length of the heat exchanger in m

//OUTPUT
mprintf('Length of the heat exchanger is %3.2f m',L)

//=================================END OF PROGRAM==============================
