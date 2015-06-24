clc
clear

//Input data
Po=1000 //Stagnation pressure in kPa
To=800 //Stagnation temperature in K
k=1.4 //Adiabatic Constant 
M2=2 //Exit mach number
At=20 //Throat area in cm^2 
R=287 //Specific gas constant in J/kg-K

//Calculation
t1=0.834 //Ratio of critical temperature to Stagnation temperature from isentropic gas tables @M=1,k=1.4 
Tt=To*t1 //critical temperature in K
at=sqrt(k*R*Tt) //Velocity of sound at critical state in m/s
Ct=at //Velocity of air at critical state in m/s, Since M=1
p1=0.528 //Ratio of critical pressure to Stagnation pressure from isentropic gas tables @M=1,k=1.4 
Pt=Po*p1 //Critical pressure in bar
dt=(Pt*10^3)/(R*Tt) //Density at critical state in kg/m^3, Pt in Pa
m=dt*At*10^-4*Ct //Mass flow rate in kg/s, At in m^2
p2=0.128 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2,k=1.4
P2=Po*p2 //exit pressure in kPa
t2=0.555 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2,k=1.4
T2=To*t2 //exit temperature in K
a2=1.687 //Ratio of exit area to critical area from isentropic gas tables @M2,k=1.4
A2=At*a2 //Exit area in cm^2
C2=sqrt(k*R*T2)*M2 //Exit velocity in m/s
d2=P2*10^3/(R*T2) //Density at exit in kg/m^3, P2 in Pa

//Output
printf('(A)At throat:\n    Temperature is %3.1f K\n    Velocity is %3.2f m/s\n    Pressure is %3i kPa\n (B)At Exit:\n    Temperature is %3i K\n    Pressure is %3i kPa\n    Area is %3.2f m^2\n    Mass flow rate is %3.4f kg/s',Tt,Ct,Pt,T2,P2,A2,m)
