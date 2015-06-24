clc
clear

//Input data
M2=2 //Exit mach number
At=1000 //Throat area in cm^2 
Po=0.69 //Stagnation pressure in bar 
To=310 //Stagnation temperature in K
k=1.4 //Adiabatic Constant 
R=287 //Specific gas constant in J/kg-K
Cp=1.005 //Specific heat capacity at constant pressure in kJ/kg-K 

//Calculation
t1=0.834 //Ratio of critical temperature to Stagnation temperature from isentropic gas tables @M=1,k=1.4
Tt=To*t1 //critical temperature in K
at=sqrt(k*R*Tt) //Velocity of sound at critical state in m/s
Ct=at //Velocity of air at critical state in m/s, Since M=1
p1=0.528 //Ratio of critical pressure to Stagnation pressure from isentropic gas tables @M=1,k=1.4 
Pt=Po*p1 //Critical pressure in bar
dt=(Pt*10^5)/(R*Tt) //Density at critical state in kg/m^3, Pt in Pa
m=dt*At*10^-4*Ct //Mass flow rate in kg/s, At in m^2
p2=0.128 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2,k=1.4
P2=Po*p2 //exit pressure in bar
t2=0.555 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2,k=1.4
T2=To*t2 //exit temperature in K
C2=sqrt(k*R*T2)*M2 //Exit velocity in m/s
d2=(P2*10^5)/(R*T2) //Density at exit in kg/m^3, P2 in Pa
A2=(m/(d2*C2))*10^4 //Exit area in cm^2
P=m*Cp*(To-T2) //Power required to drive the compressor in kW

//Output
printf('(A)At throat:\n    Temperature is %3.2f K\n    Velocity is %3.2f m/s\n    Pressure is %3.3f bar\n    At Test section:\n    Temperature is %3.2f K\n    Velocity is %3.3f m/s\n    Pressure is %3.3f bar\n (B)Area of cross section at test section is %3i cm^2\n (C)Mass flow rate is %3.3f kg/s\n (D)Power required to drive the compressor is %3.2f kW',Tt,Ct,Pt,T2,C2,P2,A2,m,P)
