clc
clear

//input data
M1=0.25 //Mach number at entrance
ds=0.124 //Change in entropy in kJ/kg-K
P1=700 //Static pressure at entrance in bar
T1=333 //Static temperature at entry in Kelvin
D=0.05 //inner pipe diameter in m
f=0.006 //frictional factor
k=1.4 //Adiabatic constant
R=0.287 //Gas constant in kJ/kg-K

//calculation
p1=exp(ds/R) //Ratio of Stagnation pressure at inlet to outlet 
t1=0.987 //Ratio of Static Temperature to Stagnation temperature at entry from gas tables @M1
To1=T1/t1 //Stagnation temperature at entry in K
p2=0.957 //Ratio of Static pressure to Stagnation pressure at entry from gas tables @M1
Po1=P1/p2 //Stagnation pressure at entry in kPa
Po2=Po1/p1 //Stagnation pressure at exit in kPa
a1=sqrt(k*R*10^3*T1) //Sound velocity in m/s, R in J/kg
C1=a1*M1 //air velocity in m/s
p3=4.3615 //Static Pressure ratio from gas tables (fanno flow tables,k=1.4,M=0.25)
Pt=P1/p3 //Static critical pressure in kPa
t1=1.185 //Static temperature ratio from gas tables (fanno flow tables,k=1.4,M=0.25)
Tt=T1/t1 //Static critical temperature in K
c1=0.272 //Velocity ratio from gas tables (fanno flow tables,k=1.4,M=0.25)
Ct=C1/c1 //Critical velocity in m/s
p4=2.4065 //Pressure ratio at entry from gas tables @M1,k
Pot=Po1/p4 //Stagnation pressure at critical state in kPa
X1=8.537 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k
p5=Po2/Pot //Pressure ratio 
M2=0.41 //Mach number at exit from gas tables @p5
p6=2.629 //Pressure ratio at exit from gas tables @p5
P2=Pt*p6 //Exit pressure in kPa
t2=1.161 //Temperature ratio at exit from gas tables @p5
T2=Tt*t2 //Exit temperature in K
c2=0.4415 //Velocity ratio at exit from gas tables @p5
C2=Ct*c2 //Exit velocity in m/s
X2=2.141 //frictional constant fanno parameter from gas tables,fanno flow tables @M2,k
X3=X1-X2 //overall frictional constant fanno parameter
L=(X3*D)/(4*f) //Length of the pipe in m

//output
printf('(A)Mach number at exit(section 2) is %3.2f \n (B)Properties at exit(section 2):\n    Pressure is %3.2f kPa\n    Temperature is %3i K\n    Velocity is %3.3f m/s\n (C)Length of the duct is %3.3f m',M2,P2,T2,C2,L)
