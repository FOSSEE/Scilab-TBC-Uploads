clc
clear

//input data
Q=225/60 //Discharge in m^3/s
T2=293 //Exit temperature in K
P2=1.25 //Exit pressure in bar
L1=30 //Length of the pipe in m
D=0.15 //Duct diameter in m
f=0.02/4 //frictional factor
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
A=%pi*D^2/4 //area in m^2
C2=Q/A //Exit air velocity in m/s
a2=sqrt(k*R*T2) //Exit sound velocity in m/s 
M2=C2/a2 //Exit mach number 
p1=1.703 //Static to Critical pressure ratio at outlet from gas tables,fanno flow tables @M2,k=1.4
Pt=P2/p1 //Critical pressure in bar
c1=0.654 //Static to Critical velocity ratio at outlet from gas tables,fanno flow tables @M2,k=1.4
Ct=C2/c1 //Critical velocity in m/s
t1=1.114 //Static to Critical temperature ratio at outlet from gas tables,fanno flow tables @M2,k=1.4
Tt=T2/t1 //Critical temperature in K
X1=0.417 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.4
X2=(4*f*L1)/D //frictional constant fanno parameter
X3=X1+X2 //overall frictional constant fanno parameter
M1=0.32 //Mach number at entrance
p2=3.385 //Static to Critical pressure ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
P1=Pt*p2 //Static pressure at inlet in bar
c2=0.347 //Static to Critical velocity ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
C1=Ct*c2 //Air velocity at inlet in m/s
t2=1.176 //Static to Critical temperature ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
T1=Tt*t2 //Static temperature at inlet in K

//output
printf('Required Inlet Condition:\n    Pressure is %3.4f bar\n    Velocity is %3.3f m/s\n    Temperature is %3.1f K',P1,C1,T1)
