clc
clear

//Input data
M1=3.6 //Inlet mach number 
M2=2 //Exit mach number
m=15 //Mass flow rate in kg/s
P1=1.05 //Inlet pressure in bar
T1=313 //Inlet temperature in K
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K

//Calculation
p1=11.38*10^-3 //Ratio of inlet pressure to Stagnation pressure from gas tables @M1,k=1.4
Po=P1/p1 //Stagnation pressure in bar
t1=0.278 //Ratio of inlet temperature to Stagnation temperature from gas tables @M1,k=1.4
To=T1/t1 //Stagnation temperature in K
C1=sqrt(k*R*T1)*M1 //Inlet velocity in m/s
d1=(P1*10^5)/(R*T1) //Density at inlet in kg/s, P1 in Pa
A1=(m/(d1*C1))*10^4 //Inlet area in cm^2
p2=0.128 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2,k=1.4
P2=Po*p2 //exit pressure in bar
t2=0.555 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2,k=1.4
T2=To*t2 //exit temperature in K
C2=sqrt(k*R*T2)*M2 //Exit velocity in m/s
d2=(P2*10^5)/(R*T2) //Density at exit in kg/s
A2=(m/(d2*C2))*10^4 //Exit area in cm^2

//Output 
printf('(A)At Inlet:\n    Area is %3.1f cm^2\n    Total pressure %3.2f bar\n    Total temperature is %3.1f K\n (B)At Exit:\n    Area is %3.1f cm^2\n    Total pressure %3.2f bar\n    Total temperature is %3.2f K\n    Static temperature is %3.2f K\n    Static pressure is %3.2f bar',A1,Po,To,A2,Po,To,T2,P2)
