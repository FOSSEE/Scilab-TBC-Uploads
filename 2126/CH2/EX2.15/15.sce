clc
clear

//Input data
A1=0.15 //Inlet area in m^2
C1=240 //Inlet velocity in m/s 
T1=300 //Inlet temperature in K
P1=0.7 //Inlet pressure in bar
C2=120 //Exit velocity in m/s
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K 

//Calculations
a1=sqrt(k*R*T1) //Velocity of sound at inlet in m/s
M1=C1/a1 //Inlet mach number 
d1=(P1*10^5)/(R*T1) //Density at inlet in kg/s, P1 in Pa
m=d1*A1*C1 //Mass flow rate in kg/s
t1=0.913 //Ratio of inlet temperature to Stagnation temperature from gas tables @M1,k=1.4
To=T1/t1 //Stagnation temperature in K
p1=0.727 //Ratio of inlet pressure to Stagnation pressure from gas tables @M1,k=1.4
Po=P1/p1 //Stagnation pressure in bar
T2=To-(C2^2/(2*Cp)) //Exit temperature in K
t2=T2/To //Temperature ratio 
M2=0.33 //Exit mach number from gas tables @t2,k=1.4
p2=0.927 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2,k=1.4
P2=Po*p2 //exit pressure in bar
d2=(P2*10^5)/(R*T2) //Density at exit in kg/s, P2 in Pa
A2=(m/(d2*C2)) //Exit area in m^2
ds=0 //Entropy change in kJ/kg-K, since process is isentropic

//Output
printf('(A)Mass flow rate is %3.3f kg/s\n (B)Stagnation pressure at exit is %3.4f bar\n (C)Stagnation Temperature at exit is %3.3f K\n (D)Static exit pressure is %3.3f bar\n (E)Entropy change is %3i kJ/kg-K\n (F)Exit area is %3.3f m^2',m,Po,To,P2,ds,A2)
