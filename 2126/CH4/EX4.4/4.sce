clc
clear

//input data
C1=100 //Air velocity into combustion chamber in m/s
P1=3 //Static Pressure at entry in bar
T1=318 //Static Temperature at entry in K
q=630 //The heat transferred per unit mass flow in kJ/kg
Cp=1.005 //Specific heat of dry air in kJ/kg-K
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
a1=sqrt(k*R*T1) //Sound velocity in m/s
M1=C1/a1 //Mach number at entry
t1=0.985 //Temperature ratio at entry from gas tables (M1,k=1.4,isentropic)
To1=T1/t1 //Total stagnation temperature at inlet in K
p1=0.947 //Pressure ratio  at entry from gas tables (M1,k=1.4,isentropic)
Po1=P1/p1 //Stagnation Pressure at entry in bar
To2=(q/Cp)+To1 //Stagnation exit temperation in K
p2=2.163 //Static Pressure ratio  at critical state from gas tables (Rayleigh,k=1.4,M=0.28)
Pt=P1/p2 //Static critical pressure in bar 
p3=2.206 //Stagnation Pressure ratio at critical state from gas tables (Rayleigh,k=1.4,M=0.28)
Pot=Po1/p3 //Stagnation critical pressure in bar
t2=0.310 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=0.28)
Tot=To1/t2 //Stagnation critical temperature in K
t3=(To2/Tot) //Stagnation Temperature ratio at exit
M2=0.7 //Mack number at exit from gas tables (Rayleigh,t3)
p4=1.423 //Static Pressure ratio  at exit from gas tables (Rayleigh,t3,M2)
P2=p4*Pt //Static Pressure at exit in bar

//output 
printf('(A)Pressure after combustion is %3.3f bar\n (B)Mach number after combustion is %3.1f',P2,M2)
