clc 
clear

//input data
M1=3 //Mach number at entry
To1=295 //Total stagnation temperature at inlet in K
P1=0.5 //Static Pressure at entry in bar
M2=1.5 //Mack number at exit
Cp=1.005 //Specific heat of dry air in kJ/kg-K
R=287 //Gas constant in J/kg-K

//calculation
p1=0.0272 //Pressure ratio  at entry from gas tables (M=3,k=1.4,isentropic)
Po1=P1/p1 //Stagnation Pressure at entry in bar
t1=0.357 //Temperature ratio at entry from gas tables (M=3,k=1.4,isentropic)
T1=t1*To1 //Static temperature at entry in Kelvin
p2=0.176 //Static Pressure ratio  at critical state from gas tables (Rayleigh,k=1.4,M=3)
Pt=P1/p2 //Static critical pressure in bar 
p3=3.424 //Stagnation Pressure ratio at critical state from gas tables (Rayleigh,k=1.4,M=3)
Pot=Po1/p3 //Stagnation critical pressure in bar
t2=0.654 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=3)
Tot=To1/t2 //Stagnation critical temperature in K
t3=0.280 //Static temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M=3)
Tt=T1/t3 //Static critical temperature in K
p4=0.578 ////Static Pressure ratio  at exit from gas tables (Rayleigh,M=1.5)
P2=p4*Pt //Static Pressure at exit in bar
p5=1.122 //Stagnation Pressure ratio at exit from gas tables (Rayleigh,M=1.5)
Po2=p5*Pot //Stagnation Pressure at exit in bar
t4=0.753 ////Static temperature ratio at exit from gas tables (Rayleigh,M=1.5)
T2=t4*Tt //Static exit temperature in K
t5=0.909 //Stagnation temperature ratio at exit from gas tables (Rayleigh,M=1.5)
To2=t5*Tot //Total stagnation temperature at exit in K
q=Cp*(To1-To2) //The heat transferred per unit mass flow in kJ/kg
SPC=Po1-Po2 //Change in stagnation pressure in bar
n=log(Po1/Po2)/(log(Po1/Po2)-log(To1/To2)) //Exponent of polytropic equation
qmax=Cp*(Tot-To1) //Maximum possible heat transfer in kJ/kg
ds=Cp*log(T2/T1)-(R*log(P2/P1)) //Change in entropy in kJ/kg-K

//output
printf('(A)Total temperature at exit is %3.2f K\n (B)Static pressure at exit is %3.3f bar \n (C)Change in stagnation pressure is %3.2f bar\n (D)Exponent of polytropic equation is %3.2f',To2,P2,SPC,n)
