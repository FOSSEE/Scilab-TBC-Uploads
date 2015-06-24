clc
clear

//input data
T1=560 //Static Temperature at entry in K
P1=0.6 //Static Pressure at entry in bar
C1=75 //Air velocity into combustion chamber in m/s
mp=30 //air fuel ratio
CV=92000 //Calorific value of fuel in kJ/kg
Cp=1.005 //Specific heat of dry air in kJ/kg-K
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
a1=sqrt(k*R*T1) //Sound velocity in m/s
M1=C1/a1 //Mach number at entry
t1=0.9949 //Temperature ratio at entry from gas tables (M1,k=1.4,isentropic)
To1=T1/t1 //Total stagnation temperature at inlet in K
p1=0.982 //Pressure ratio  at entry from gas tables (M1,k=1.4,isentropic)
Po1=P1/p1 //Stagnation Pressure at entry in bar
q=CV/(mp+1) //The heat transferred per unit mass flow in kJ/kg of gas, mp+1=total amount of fuel=mf+ma
p2=2.317 //Static Pressure ratio  at critical state from gas tables (Rayleigh,k=1.4,M1)
Pt=P1/p2 //Static critical pressure in bar
p3=1.246 //Stagnation Pressure ratio at critical state from gas tables (Rayleigh,k=1.4,M1)
Pot=Po1/p3 //Stagnation critical pressure in bar
t2=0.137 //Static temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M1) 
Tt=T1/t2 //Static critical temperature in K
t3=0.115 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M1)
Tot=To1/t3 //Stagnation critical temperature in K
To2=(q/Cp)+To1 //Stagnation exit temperation in K
t4=To2/Tot //Ratio of stagnation temperature at exit and critical state 
M2=0.33 //Mach number at exit from gas tables (Rayleigh,t4,k=1.4)
p4=2.0825 //Static Pressure ratio  at exit from gas tables (Rayleigh,t4,k=1.4)
P2=p4*Pt //Static Pressure at exit in bar, miscalculation in textbook
p5=1.186 //Stagnation Pressure ratio at exit from gas tables (Rayleigh,t4,k=1.4)
Po2=Pot*p5 //Stagnation Pressure at exit in bar
t5=0.472 //Static temperature ratio  at exit from gas tables (Rayleigh,t4,k=1.4)
T2=t5*Tt //Static exit temperature in K
C2=M2*sqrt(k*R*T2) //exit velocity in m/s
SPL=((Po1-Po2)/Po1)*100 //Percentage of pressure loss in combustion chamber in %

//output
printf('(A)At exit:\n    Pressure is %3.5f bar \n    Temperature is %3i K \n    Velocity is %3.2f m/s \n    Mach number is %3.2f \n (B)Maximum stagnation temperature available is %3.2f K\n (C)Percentage of pressure loss in combustion chamber is %3.1f percent\n (D)Intial Mach number is %3.2f \n',P2,T2,C2,M2,Tot,SPL,M1)
