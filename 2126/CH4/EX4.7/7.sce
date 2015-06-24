clc
clear

//input
P1=0.343 //Static Pressure at entry in bar
T1=310 //Static temperature at entry in Kelvin
C1=60 //Velocity at entrance in m/s
q=1172.5 //The heat transferred per unit mass flow in kJ/kg
Cp=1.005 //Specific heat of dry air in kJ/kg-K
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
a1=sqrt(k*R*T1) //Sound velocity in m/s
M1=C1/a1 //Mach number at entry
t1=0.9943 //Temperature ratio at entry from gas tables (M=0.17,k=1.4,isentropic)
To1=T1/t1 //Total stagnation temperature at inlet in K
p1=2.306 //Static Pressure ratio at critical state from gas tables (Rayleigh,k=1.4,M=0.17)
Pt=P1/p1 //Static critical pressure in bar
t2=0.154 //Static temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=0.17) 
Tt=T1/t2 //Static critical temperature in K
t3=0.129 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=0.17)
Tot=To1/t3 //Stagnation critical temperature in K
c1=0.0665 //Velocity ratio at critical state from gas tables (Rayleigh,k=1.4,M=0.17)
Ct=C1/c1 //Critical velocity in m/s
To2=(q/Cp)+To1 //Stagnation exit temperation in K
t4=To2/Tot //Ratio of stagnation temperature at exit and critical state 
M2=0.45 //Mach number at exit from gas tables (Rayleigh,t4,k=1.4)
p2=1.87 //Static Pressure ratio  at exit from gas tables (Rayleigh,t4,k=1.4)
P2=p2*Pt //Static Pressure at exit in bar 
t5=0.7075 //Static temperature ratio  at exit from gas tables (Rayleigh,t4,k=1.4)
T2=t5*Tt //Static exit temperature in K
c2=0.378 //Velocity ratio at critical state from gas tables (Rayleigh,k=1.4,t4)
C2=Ct*c2 //exit velocity in m/s

//output
printf('At exit conditions :\n (A)Mach number is %3.2f\n (B)Pressure is %3.3f bar\n (C)Temperature is %3.2f K\n (D)Exit velocity is %3.2f m/s',M2,P2,T2,C2)
