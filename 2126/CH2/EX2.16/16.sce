clc
clear

//Input data
A2=645 //Exit area in mm^2
M2=2 //Exit mach number
P2=1 //exit pressure in bar
T2=185 //Exit temperature in K
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K

//Calculation
t1=0.555 //Ratio of exit temperature to Stagnation temperature from gas tables @M2,k=1.4
To=T2/t1 //Stagnation temperature in K
p1=0.128 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2,k=1.4
Po=P2/p1 //Stagnation pressure in bar
a1=1.687 //Ratio of exit area to critical area from isentropic gas tables @M2,k=1.4
At=A2/a1 //Critical area in mm^2
d2=(P2*10^5)/(R*T2) //Density at exit in kg/s, P2 in Pa
C2=sqrt(k*R*T2)*M2 //Exit air velocity in m/s
m=d2*A2*C2*10^-6 //Mass flow rate in kg/s, A2 in m^2

//Output
printf('(A)Throat area is %3.2f mm^2\n (B)Reservoir pressure is %3.4f bar\n (C)Reservoir temperature is %3.2f K\n (D)Mass flow rate is %3.4f kg/s',At,Po,To,m)
