clc
clear

//input data
M1=2 //Mach number at entry
P1=1.4 //Static Pressure at entry in bar
T1=323 //Static Temperature at entry in K
Cp=1.005 //Specific heat of dry air in kJ/kg-K
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
t1=0.555 //Temperature ratio at entry from gas tables (M=2,k=1.4,isentropic)
To1=T1/t1 //Total stagnation temperature at inlet in K
p1=0.364 //Pressure ratio  at entry from gas tables (M=2,k=1.4,isentropic)
Po1=P1/p1 //Stagnation Pressure at entry in bar
t2=0.529 //Static temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=2) 
Tt=T1/t2 //Static critical temperature in K
t3=0.793 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=2)
Tot=To1/t3 //Stagnation critical temperature in K
To2=Tot //Stagnation exit temperation in K
q=Cp*(To2-To1) //The heat transferred per unit mass flow in kJ/kg
a1=sqrt(k*R*T1) //Sound velocity in m/s
C1=M1*a1 //Air velocity in m/s
d1=(P1*10^5)/(R*T1) //density of air in kg/m^3
ma=d1*C1 //Mass flow rate per unit area in kg/s-m^3

//output
printf('(A)Mass flow rate per unit area is %3.2f kg/s-m^2\n (B)Final temperarure is %3.3f K\n (C)Heat added is %3.2f kJ/kg',ma,Tt,q)
