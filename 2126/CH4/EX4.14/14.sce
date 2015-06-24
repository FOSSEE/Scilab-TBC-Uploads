clc
clear

//input data
k=1.3 //Adiabatic constant
R=466 //Gas constant in J/kg-K
P1=0.345 //Static Pressure at entry in Pa
T1=312 //Static Temperature at entry in K
C1=65.5 //Entry velocity in m/s
q=4592 //The heat transferred per unit mass flow in kJ/kg

//calculation
a1=sqrt(k*R*T1) //Sound velocity in m/s
M1=C1/a1 //Mach number at entry
t1=0.9965 //Temperature ratio at entry from gas tables (M1,k=1.3,isentropic)
To1=T1/t1 //Total stagnation temperature at inlet in K
p1=2.235 //Static Pressure ratio  at critical state from gas tables (Rayleigh,k=1.3,M1)
Pt=P1/p1 //Static critical pressure in bar 
c1=0.051 //Velocity ratio at critical state from gas tables (Rayleigh,k=1.3,M1)
Ct=C1/c1 //Critical velocity in m/s
t2=0.112 //Static temperature ratio at critical state from gas tables (Rayleigh,k=1.3,M1) 
Tt=T1/t2 //Static critical temperature in K
t3=0.098 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.3,M1)
Tot=To1/t3 //Stagnation critical temperature in K
Cp=(k*R)/(k-1) //Specific heat of dry air in kJ/kg-K
To2=(q/Cp)+To1 //Stagnation exit temperation in K
t4=(To2/Tot) //Stagnation Temperature ratio at exit
M2=0.60 //Mack number at exit from gas tables (Rayleigh,t4)
p2=1.567 //Static Pressure ratio  at exit from gas tables (Rayleigh,t4,k=1.4)
P2=p2*Pt //Static Pressure at exit in bar 
t5=0.884 //Static temperature ratio  at exit from gas tables (Rayleigh,t4,k=1.4)
T2=t5*Tt //Static exit temperature in K
c2=0.564 //Velocity ratio at critical state from gas tables (Rayleigh,k=1.4,t4)
C2=Ct*c2 //exit velocity in m/s
qmax=Cp*(Tot-To1)/10^3 //Maximum possible heat transfer in kJ/kg 

//output
printf('(A)Heat required to accelerate the gas from the inlet condition to sonic condition is %3.2f kJ/kg\n (B)The pressure and temperature at sonic condition are %3.3f bar and %3.2f K respectively\n (C)The properties at exit are:\n    Pressure is %3.3f bar\n    Temperature is %3.2f K\n    Velocity is %3i m/s',qmax,Pt,Tt,P2,T2,C2)
