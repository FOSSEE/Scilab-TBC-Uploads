clc
clear

//Input data
Po1=8 //Stagnation pressure in bar
To1=273+15 //Stagnation temperature in K
At=25 //Throat area in cm^2
A2=100 //Exit area in cm^2
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K

//Calculation
a1=A2/At //Area ratio
M2=2.94 //Exit mach number from gas tables @a1,k=1.4
p1=0.0298 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2,k=1.4
P2=Po1*p1 //exit pressure in bar
M_2=0.146 //Exit mach number when it acts as diffuser
p2=0.9847 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2
P_2=Po1*p2 //exit pressure in bar
p3=0.528 //Ratio of critical pressure to Stagnation pressure from isentropic gas tables @M=1,k=1.4 
Pc=(Po1*p3) //Critical pressure in bar
t1=0.834 //Ratio of critical temperature to Stagnation temperature from isentropic gas tables @M=1,k=1.4 
Tt=To1*t1 //critical temperature in K
d_t=(Pc*10^5)/(R*Tt) //Density at critical state in kg/m^3
a_t=sqrt(k*R*Tt) //Velocity of sound at critical state in m/s
Ct=a_t //Velocity of air at critical state in m/s
m=d_t*At*Ct*10^-4 //Mass flow rate in kg/s

//Output
printf('(A)Maximum mass flow rate is %3.3f kg/s\n (B)As nozzle:\n    Pressure is %3.4f bar\n    Mach number is %3.2f\n As diffuser:\n    Pressure is %3.4f bar\n    Mach number is %3.3f',m,P2,M2,P_2,M_2)
