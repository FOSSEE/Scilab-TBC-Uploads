clc
clear

//Input data
Po1=3.344 //Stagnation pressure in bar
To1=900 //Stagnation temperature in K
P2=1.05 //Exit pressure in bar
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K 

//Calculation
p1=P2/Po1 //Pressure ratio
M2=1.40 //Exit mach number from gas tables @p1,k=1.4
t1=0.718 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2,k=1.4
T2=To1*t1 //exit temperature in K
C2=sqrt(k*R*T2)*M2 //Exit velocity in m/s
d2=(P2*10^5)/(R*T2) //Density at exit in kg/m^3
a1=1.115 //Ratio of exit area to critical area from isentropic gas tables @M2
M_2=0.6733 //Exit mach number when it acts as diffuser 
t2=0.91633 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2
T_2=t2*To1 //exit temperature in K
C_2=sqrt(k*R*T_2)*M_2 //Exit velocity in m/s
p2=0.738 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2
P_2=Po1*p2 //exit pressure in bar
d_2=(P_2*10^5)/(R*T_2) //Density at exit in kg/m^3

//Output
printf('(A)At exit:\n    Temperaure is %3i K\n    Velocity is %3.2f m/s\n    Density is %3.3f kg/m^3\n (B)At diffuser:\n    Temperaure is %3.3f K\n    Velocity is %3.3f m/s\n    Density is %3.4f kg/m^3\n    Pressure is %3.4f bar\n',T2,C2,d2,T_2,C_2,d_2,P_2)
