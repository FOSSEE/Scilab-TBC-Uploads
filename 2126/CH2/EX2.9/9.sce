clc
clear

//Input data
P1=2.45 //Inlet pressure in bar
T1=26.5+273 //Inlet temperature in K
M1=1.4 //Inlet mach number 
M2=2.5 //Exit mach number
k=1.3 //Adiabatic Constant
R=469 //Specific gas constant in J/kg-K

//Calculation
t1=0.773 //Ratio of inlet temperature to Stagnation temperature from gas tables @M1,k=1.3
To=T1/t1 //Stagnation temperature in K
t2=0.516 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2,k=1.3
T2=To*t2 //exit temperature in K
C2=sqrt(k*R*T2)*M2 //Exit velocity in m/s
a1=sqrt(k*R*T1) //Sound velocity at inlet in m/s
G=(P1*10^5*a1*M1)/(R*T1) //)Flow rate per square meter of the inlet cross section in kg/s-m^2

//Output
printf('(A)Stagnation temperature is %3.2f K\n (B)At Exit:\n    Temperature is %3.3f K\n    Velocity is %3.2f m/s\n (C)Flow rate per square meter of the inlet cross section is %3.2f kg/s-m^2',To,T2,C2,G)
