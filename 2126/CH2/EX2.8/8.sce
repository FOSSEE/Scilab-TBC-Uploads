clc
clear

//Input data
Po=6.91 //Stagnation pressure in bar
To=325+273 //Stagnation temperature in K
P2=0.98 //exit pressure in bar
m=3600/3600 //Mass flow rate in kg/s
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K 

//Calculation
p1=0.528 //Ratio of critical pressure to Stagnation pressure from gas tables @M=1
Pt=Po*p1 //critical pressure in bar
t1=0.834 //Ratio of critical temperature to Stagnation temperature from gas tables @M=1
Tt=To*t1 //critical temperature in K
at=sqrt(k*R*Tt) //Sound velocity at throat in m/s 
Ct=at //Air velocity t throat in m/s, Since M=1
dt=(Pt*10^5)/(R*Tt) //Density of air at throat in kg/m^3, Pt in Pa
At=(m/(dt*Ct))*10^4 //Throat area in m^2 x10^-4 
p2=P2/Po //Pressure ratio 
M2=1.93 //Exit mach number from gas tables @p2,k=1.4
t2=0.573 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2,k=1.4
T2=To*t2 //exit temperature in K
a2=1.593 //Ratio of exit area to critical area from isentropic gas tables @M2,k=1.4
A2=a2*At //Exit area in m^2, At in m^2 x10^-4
C_max=sqrt(2*Cp*To) //Maximum possible velocity in m/s

//Output
printf('(A)At throat:\n    Area is %3.2fx10^-4 m^2\n    Pressure is %3.2f bar\n    Velocity is %3.1f m/s\n (B)At Exit:\n    Area is %3.3fx10^-4 m^2\n    Mach number is %3.2f\n (C)Maximum possible velocity is %3.2f m/s',At,Pt,Ct,A2,M2,C_max)
