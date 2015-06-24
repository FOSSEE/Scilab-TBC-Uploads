clc
clear

//input data
m=8.25 //Mass flow rate in kg/s
M1=0.15 //Mach number at entrance
M2=0.5 //Mach number at exit
P1=345 //Static pressure at entrance in kPa
T1=38+273 //Static temperature at entry in Kelvin
f=0.005 //frictional factor
k=1.4 //Adiabatic constant
R=0.287 //Gas constant in kJ/kg-K

//calcu;ation
d1=(P1*10^3)/(R*10^3*T1) //Density of air in kg/m^3, P1 in Pa
a1=sqrt(k*R*10^3*T1) //Sound velocity in m/s, R in J/kg
C1=a1*M1 //air velocity in m/s
A1=m/(d1*C1) //Inlet area in m^2
D=(sqrt((4*A1)/(%pi)))*10^3 //inner duct diameter in mm
p1=7.3195 //Static Pressure ratio from gas tables (fanno flow tables,k=1.4,M=0.15)
Pt=P1/p1 //Static critical pressure in kPa
t1=1.1945 //Static temperature ratio from gas tables (fanno flow tables,k=1.4,M=0.15)
Tt=T1/t1 //Static critical temperature in K
c1=0.164 //Velocity ratio from gas tables (fanno flow tables,k=1.4,M=0.15)
Ct=C1/c1 //Critical velocity in m/s
p2=0.984 //Pressure ratio at entry from gas tables (fanno flow tables,k=1.4,M=0.15)
Po1=P1/p2 //Stagnation pressure at entry in kPa
p3=3.928 //Stagnation pressure ratio at entry from gas tables (fanno flow tables,k=1.4,M=0.15)
Pot=Po1/p3 //Stagnation pressure at critical state in kPa
X1=28.354 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k
p5=2.138 //Pressure ratio at exit from gas tables (fanno flow tables,k=1.4,M2)
P2=Pt*p5 //Exit pressure in kPa
t2=1.143 //Temperature ratio at exit from gas tables (fanno flow tables,k=1.4,M2)
T2=Tt*t2 //Exit temperature in K
c2=0.534 //Velocity ratio at exit from gas tables (fanno flow tables,k=1.4,M2) 
C2=Ct*c2 //Exit velocity in m/s
p6=1.34 //Stagnation pressure ratio at exit from gas tables (fanno flow tables,k=1.4,M2)
Po2=Pot*p6 //Stagnation pressure at exit in kPa
SPL=Po1-Po2 //Stagnation Pressure lose in kPa
X2=1.069 //frictional constant fanno parameter from gas tables,fanno flow tables @M2,k
X3=X1-X2 //overall frictional constant fanno parameter
L=(X3*D*10^-3)/(4*f) //Length of the duct in m

//verification
a2=sqrt(k*R*10^3*T2) //Sound velocity in m/s, R in J/kg
M2_v=C2/a2 //air velocity in m/s

//output
printf('(A)Length of the duct is %3.2f m\n (B)Diameter of the duct is %3i mm\n (C)Pressure and diameter at exit are %3.2f kPa, and %3i mm respectively\n (D)Stagnation Pressure lose is %3i kPa\n (E)Using exit velocity %3.2f m/s, temperature %3.2f K Mach number is found to be %3.2f',L,D,P2,D,SPL,C2,T2,M2_v)
