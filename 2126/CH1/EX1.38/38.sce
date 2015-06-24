clc
clear

//Input data
A1=10 //Inlet area in cm^2
C1=80 //Inlet Air velocity in m/s
T1=28+273 //Inlet temperature in K
P1=700 //Inlet Pressure in kPa
P2=250 //Exit pressure in kPa
k=1.4 //Adiabatic constant
R=287 //Specific gas constant in J/kg-K

//Calculation
a1=sqrt(k*R*T1) //Sound velocity at inlet in m/s
M1=C1/a1 //Mach number at inlet
t1=0.989 //Static to Stagnation temperature ratio at entry from gas tables @M1,k=1.4
To=T1/t1 //Stagantion temperature in K
p1=0.964 //Static to Stagnation pressure ratio at entry from gas tables @M1,k=1.4 
Po=P1/p1 //Stagnation pressure in kPa
p2=P2/Po //Static to Stagnation pressure ratio 
M2=1.335 //Mach number at exit 
t2=0.737 //Static to Stagnation temperature ratio at exit from gas tables @M2,k=1.4
T2=To*t2 //Stagnation temperatur in K
a2=sqrt(k*R*T2) //Sound velocity at exit in m/s
C2=M2*a2 //Exit Air velocity in m/s
d1=(P1*10^3)/(R*T1) //Density at inlet in kg/m^3
m=d1*A1*C1*10^-4 //Mass flow rate in kg/s

//Output
printf('(A)Mass flow rate is %3.3f kg/s\n (B)Velocity at the exit is %3.2f m/s',m,C2)
