clc
clear

//input data
M1=3 //Mach number at entry
P1=1 //Static Pressure at entry in atm
T1=300 //Static Temperature at entry in K
q=300 //The heat transferred per unit mass flow in kJ/kg
R=287 //Gas constant in J/kg-K
Cp=1.005 //Specific heat of dry air in kJ/kg-K

//calculation
t1=2.8 //Temperature ratio at entry from gas tables (M=3,k=1.4,isentropic)
To1=t1*T1 //Total stagnation temperature at inlet in K
p1=0.0272 //Pressure ratio  at entry from gas tables (M=3,k=1.4,isentropic)
Po1=P1/p1 //Stagnation Pressure at entry in atm
p2=0.176 //Static Pressure ratio  at critical state from gas tables (Rayleigh,k=1.4,M=3)
Pt=P1/p2 //Static critical pressure in atm 
p3=3.424 //Stagnation Pressure ratio at critical state from gas tables (Rayleigh,k=1.4,M=3)
Pot=Po1/p3 //Stagnation critical pressure in atm
t2=0.281 //Static temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=3) 
Tt=T1/t2 //Static critical temperature in K
t3=0.654 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=3)
Tot=To1/t3 //Stagnation critical temperature in K
To2=(q/Cp)+To1 //Stagnation exit temperation in K
t4=(To2/Tot) //Stagnation Temperature ratio at exit
M2=1.6 //Mack number at exit from gas tables (Rayleigh,t4)
p4=0.524 //Static Pressure ratio  at exit from gas tables (Rayleigh,t4=0.866,M=1.6)
P2=p4*Pt //Static Pressure at exit in atm
p5=1.176 //Stagnation Pressure ratio at exit from gas tables (Rayleigh,t4=0.866,M=1.6)
Po2=p5*Pot //Stagnation Pressure at exit in atm
t5=0.702 //Static temperature ratio at exit from gas tables (Rayleigh,t4=0.866,M=1.6)
T2=t5*Tt //Static exit temperature in K
d2=P2*101325/(R*T2) //density of air at exit in kg/m^3, P2 in N/m^2

//outpur
printf('(A)The Mach numer at exit is %3.1f\n (B)Static Pressure at exit is %3.3f atm\n (C)Static exit temperature is %3.2f K\n (D)density of air at exit is %3.4f kg/m^3\n (E)Stagnation exit temperation is %3.2f K\n (F)Stagnation Pressure at exit is %3.2f atm',M2,P2,T2,d2,To2,Po2)
