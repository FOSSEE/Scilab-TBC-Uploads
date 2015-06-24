clc
clear

//Input data
Po=20 //Stagnation pressure in kPa
To=1000 //Stagnation temperature in K
P2=3 //exit pressure in bar
A2=100 //Exit area in cm^2
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K 

//Calculations
p1=P2/Po //Pressure ratio
M2=1.9 //Exit mach number from gas tables @p1,k=1.4
t1=0.581 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2,k=1.4 
T2=To*t1 //exit temperature in K
C2=M2*sqrt(k*R*T2) //Exit velocity in m/s
a1=1.555 //Ratio of exit area to critical area from isentropic gas tables @M2,k=1.4
At=A2/a1 //critical area in cm^2
p1=0.528 //Ratio of critical pressure to Stagnation pressure from gas tables @M=1
Pt=Po*p1 //critical pressure in bar
t1=0.834 //Ratio of critical temperature to Stagnation temperature from gas tables @M=1
Tt=To*t1 //critical temperature in K
at=sqrt(k*R*Tt) //Sound velocity at throat in m/s 
Ct=at //Air velocity t throat in m/s, Since M=1
dt=(Pt*10^5)/(R*Tt) //Density of air at throat in kg/m^3, Pt in Pa
m=dt*At*10^-4*Ct //Mass flow rate in kg/s, At in m^2
C_max=sqrt(2*Cp*To) //Maximum possible velocity in m/s
cr=C2/C_max //Ratio of velocities

//Output
printf('(A)At Throat:\n    Area is %3.2f cm^2\n    Pressure is %3.2f bar\n    Temperature is %3i K\n (B)Exit velocity is %3.4f times C_max in m/s\n (C)Mass flow rate is %3.2f kg/s',At,Pt,Tt,cr,m)
