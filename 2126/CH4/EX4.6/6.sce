clc
clear

//input data
M2=0.9 //Mack number at exit
P2=2.5 //Static Pressure at exit in bar
T2=1273 //Static exit temperature in K
t1=3.74 //ratio of stagnation temperatures at and exit entry
Cp=1.218 //Specific heat of dry air in kJ/kg-K
k=1.3 //Adiabatic constant

//calculation
t2=0.892 //Temperauture ratio at exit from gas tables (isentropic,k=1.3,M=0.9)
To2=T2/t2 //Total stagnation temperature at exit in K
To1=To2/t1 //Total stagnation temperature at inlet in K
p1=1.12 //Static pressure ratio at critical state from gas tables (Rayleigh,k=1.3,M=1.5)
Pt=P2/p1 //Static critical pressure in bar
t3=1.017 //Static temperature ratio at critical state from gas tables (Rayleigh,k=1.3,M=1.5)
Tt=T2/t3 //Static critical temperature in K
t4=0.991 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.3,M=1.5)
Tot=To2/t4 //Stagnation critical temperature in K
t5=To1/Tot //Ratio of stagnation temperature at entry and critical state  
M1=0.26 //Mach number at entry from gas tables (Rayleigh,t5,k=1.3)
p2=2.114 //Static Pressure ratio  at entry from gas tables (Rayleigh,t5,k=1.3)
P1=Pt*p2 //Static Pressure at entry in bar
t6=0.302 //Static temperature ratio  at entry from gas tables (Rayleigh,t5,k=1.3)
T1=Tt*t6 //Static temperature at entry in Kelvin
q=Cp*(To2-To1) //The heat transferred per unit mass flow in kJ/kg
qmax=Cp*(Tot-To1) //Maximum possible heat transfer in kJ/kg 

//output
printf('(A)Mach number at entry is %3.2f\n (B)Pressure at entry is %3.3f bar \n (C)Temperature of gas is %3i K\n (D)Amount of heat added is %3.2f kJ/kg\n (E)Maximum heat that can be heated is %3.3f kJ/kg',M1,P1,T1,q,qmax)
