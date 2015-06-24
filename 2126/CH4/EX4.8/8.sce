clc
clear

//input data
M1=2 //Mach number at entry
To1=523 //Total stagnation temperature at inlet in K
Po1=6 //Stagnation Pressure at entry in bar
To2=423 //Stagnation exit temperation in K

//calculation
t1=0.555 //Temperature ratio at entry from gas tables (M=2,k=1.4,isentropic)
T1=t1*To1 //Static temperature at entry in Kelvin
p1=0.128 //Pressure ratio  at entry from gas tables (M=2,k=1.4,isentropic)
P1=Po1*p1 //Static Pressure at entry in bar
p2=0.364 //Static pressure ratio at critical state from gas tables (Rayleigh,k=1.4,M=2)
p3=1.503 ////Stagnation pressure ratio at critical state from gas tables (Rayleigh,k=1.4,M=2), printing mistake in textbook
t2=0.529 //Static Temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=2)
t3=0.793 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=2)
t4=(To2/To1)*t3 //Ratio of stagnation temperature at exit and critical state 
M2=3.15 //Mach number at exit from gas tables (Rayleigh,t4,k=1.4)
p4=0.161 //Static Pressure ratio  at exit from gas tables (Rayleigh,t4,k=1.4), printing mistake in textbook
t5=0.258 //Static temperature ratio  at exit from gas tables (Rayleigh,t4,k=1.4)
P2=(p4/p2)*P1 //Static Pressure at exit in bar 
T2=(t5/t2)*T1 //Static exit temperature in K

//output
printf('After Cooling :\n (A)Mach number is %3.2f\n (B)Pressure is %3.4f bar\n (C)Temperature is %3.2f K',M2,P2,T2)
