clc
clear

//Input data
Po1=10 //Stagnation pressure in bar
To1=798 //Stagnation temperature in K
Pt=7.6 //Throat pressure in bar 
m=1.5 //Mass flow rate in kg/s
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K 
 
//Calculation
p1=0.528 //Ratio of critical pressure to Stagnation pressure from isentropic gas tables @M=1,k=1.4
Pc=p1*Po1 //Critical pressure in bar
P2=Pt //Exit pressure in bar, Since Pc<P2
p2=P2/Po1 //Pressure ratio
M2=0.64 //Exit mach number from isentropic gas tables @p2
t1=0.924 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2
T2=t1*To1 //exit temperature in K
C2=sqrt(k*R*T2)*M2 //Exit velocity in m/s
C_max=sqrt(2*Cp*To1) //Maximum possible velocity in m/s
d2=(P2*10^5)/(R*T2) //Density at exit in kg/m^3
At=(m/(d2*C2))*10^6 //Throat area in mm^2

//Output
printf('(A)At the nozzle throat/exit:\n    Pressure is %3.2f bar\n    Temperature is %3.2f K\n    Velocity is %3.2f\n (B)Maximum possible velocity is %3.2f m/s\n (C)Type of the nozzle is a convergent nozzle and its throat area is %3.3f mm^2',P2,T2,C2,C_max,At)
