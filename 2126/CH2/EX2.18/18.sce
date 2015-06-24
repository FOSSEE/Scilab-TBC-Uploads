clc
clear

//Input data
Po=7 //Stagnation pressure in bar
To=100+273 //Stagnation temperature in K
At=12 //Critical area in cm^2
A2=25.166 //Exit area in cm^2
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K

//Calculation
a1=A2/At //Ratio of areas
//subsonic
M2=0.29 //Exit mach number from gas tables @a1,k=1.4
p1=0.943 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2,k=1.4
P2=Po*p1 //exit pressure in bar
t1=0.983 //Ratio of exit temperature to Stagnation temperature from gas tables @M2,k=1.4
T2=To*t1 //Exit temperature in K
C2=M2*sqrt(k*R*T2) //Exit air velocity in m/s
//supersonic
M_2=2.25 //Exit mach number from gas tables @a1,k=1.4
p2=0.0865 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2,k=1.4
P_2=Po*p2 //exit pressure in bar
t2=0.497 //Ratio of exit temperature to Stagnation temperature from gas tables @M2,k=1.4
T_2=To*t2 //Exit temperature in K
C_2=M_2*sqrt(k*R*T_2) //Exit air velocity in m/s
d2=(P2*10^5)/(R*T2) //Density at exit in kg/s, P2 in Pa
m=d2*A2*10^-4*C2 //Mass flow rate in kg/s, A2 in m^2

//Output
printf('(A)Maximum mass flow rate is %3.3f kg/s\n (B)Subsonic exit condition:\n    Temperature is %3.3f K\n    Velocity is %3.2f m/s\n    Pressure is %3.3f bar\n    Mach number is %3.2f\n    Supersonic exit condition:\n    Temperature is %3.3f K\n    Velocity is %3.2f m/s\n    Pressure is %3.4f bar\n    Mach number is %3.2f\n',m,T2,C2,P2,M2,T_2,C_2,P_2,M_2)
