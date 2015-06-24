clc
clear

//Input data
Po=10 //Stagnation pressure in bar 
To=100+273 //Stagnation temperature in K
m=15 //mass flow rate in kg/s
P2s=1 //Back pressure in isentropic state in bar
eff=0.95 //efficiency of diverging nozzle
k=1.4 //Adiabatic Constant 
R=287 //Specific gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K 

//Calculation
//case I: isentropic
t1=0.834 //Ratio of critical temperature to Stagnation temperature from isentropic gas tables @M=1,k=1.4
Tt=To*t1 //critical temperature in K
at=sqrt(k*R*Tt) //Velocity of sound at critical state in m/s
Ct=at //Velocity of air at critical state in m/s, Since M=1
p1=0.528 //Ratio of critical pressure to Stagnation pressure from isentropic gas tables @M=1,k=1.4 
Pt=Po*p1 //Critical pressure in bar
dt=(Pt*10^5)/(R*Tt) //Density at critical state in kg/m^3, Pt in Pa
At=(m/(dt*Ct))*10^4 //Throat area in cm^2 
p2=P2s/Po //Pressure ratio
M2s=2.15 //Exit mach number from gas tables (isentropic state) @p2,k=1.4
t2=0.519 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2s,k=1.4
T2s=t2*To //exit temperature in K
a2s=sqrt(k*R*T2s) //Velocity of sound at exit in m/s
C2s=M2s*a2s //Exit air velocity in m/s
d2s=(P2s*10^5)/(R*T2s) //Density at exit in kg/m^3, P2 in Pa
A2s=(m/(d2s*C2s))*10^4 //Exit area in cm^2
//case II: isentropic upto throat
T2=To-(eff*(To-T2s)) //Exit tempareture in K
C2=sqrt(2*Cp*(To-T2)) //Exit air velocity in m/s
P2=P2s //Exit pressure in bar, Since it is diffuser
d2=(P2*10^5)/(R*T2) //Density at exit in kg/m^3, P2 in Pa
A2=(m/(d2*C2))*10^4 //Exit area in cm^2

//Output
printf('(A)The nozzle cross section at throat in both cases is %3.2f cm^2\n (B)The nozzle cross section at exit in case I is %3.3f cm^2 and in case II is %3.2f cm^2',At,A2s,A2)
