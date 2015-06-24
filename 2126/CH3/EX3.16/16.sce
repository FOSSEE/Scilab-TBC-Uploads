clc
clear

//input data
D=0.3 //inner pipe diameter in m
Q=1000 //Discharge in m^3/min
P2=150 //Exit pressure in kPa
T2=293 //Exit temperature in K
L1=50 //Length of the pipe in m
f=0.005 //frictional factor
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
A=%pi*D^2/4 //Area of duct in m^2 
C2=Q/(A*60) //Exit air velocity in m/s
a2=sqrt(k*R*T2) //Sound velocity in m/s
M2=C2/a2 //Exit mach number 
p1=1.54 ////Static to Critical pressure ratio at outlet from gas tables,fanno flow tables @M2,k=1.4
Pt=P2/p1 //Critical pressure in kPa
t1=1.10 //Static to Critical temperature ratio at outlet from gas tables,fanno flow tables @M2,k=1.4
Tt=T2/t1 //Critical temperature in K
X1=0.228 //frictional constant fanno parameter from gas tables,fanno flow tables @M2,k=1.4
L2=(X1*D)/(4*f) //Length of the pipe in m
L2=L1+L2 //Overall length of pipe from inlet to critical state in m
X2=(4*f*L2)/D //frictional constant fanno parameter for M1
M1=0.345 //Inlet Mach number from gas tables fanno flow tables @X2,k=1.4
p2=3.14 //Static to Critical pressure ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
P1=Pt*p2 //Static pressure at inlet in kPa
t2=1.17 //Static to Critical temperature ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
T1=Tt*t2 //Static temperature at inlet in K

//output
printf('(A)Mach number at the exit is %3.3f\n (B)Inlet pressure and temperature are %3.3f kPa and %3.2f K',M2,P1,T1)
