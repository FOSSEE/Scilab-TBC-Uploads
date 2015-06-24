clc
clear

//Input data
mol=4 //Molecular weight of gas in kg/mol
k=1.3 //Adiabatic constant
C1=150 //Gas Velocity at section-1 in m/s
P1=100 //Pressure of duct at section-1 in kPa
T1=15+273 //Temperature at section-1 in K
T2=-10+273 //Temperature at section-2 in K
Ri=8314 //Ideal gas constant in J/mol-K

//Calculation
R=Ri/mol //Specific gas constant in J/kg-K
a1=sqrt(k*R*T1) //Sound velocity at section-1 in m/s
M1=C1/a1 //Mach number at section-1 
t1=0.9955 //Static to Stagnation temperature ratio at entry from gas tables @M1,k=1.3 
To=T1/t1 //Stagantion temperature in K
p1=0.9815 //Static to Stagnation pressure ratio at entry from gas tables @M1,k=1.3 
Po=P1/p1 //Stagnation pressure in kPa
t2=T2/To //Static to Stagnation temperature ratio at exit
M2=0.82 //Amch number at section-2 from gas tables @t2,k=1.3
p2=0.659 //Static to Stagnation pressure ratio at exit from gas tables @M2,k=1.3 
P2=Po*p2 //Pressure at section-2 in kPa
a2=sqrt(k*R*T2) //Sound velocity at section-2 in m/s
C2=M2*a2 //Gas Velocity at section-2 in m/s

//Output
printf('At the second point:\n    Mach number is %3.2f\n    Pressure is %3.3f kPa\n    Velocity is %3.2f m/s',M2,P2,C2)
