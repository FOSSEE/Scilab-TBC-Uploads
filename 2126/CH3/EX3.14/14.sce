clc
clear

//input data
D1=0.03 //Inlet duct diameter in m
D2=0.015 //Throat diameter of  duct in m 
Po1=750 //Stagantion pressure at inlet in kPa
To1=450 //Stagnation temperature at inlet in K
f=0.02/4 //frictional factor
L=0.25 //Length of the duct in m
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
ar=(D1/D2)^2 //Ratio of areas
M1=2.94 //Mach number at inlet from gas tables (ar,k=1.4,isentropic)
p1=0.0298 //Static to Stagnation pressure ratio at entry from gas tables (M1,k=1.4,isentropic)
P1=Po1*p1 //Static pressure at inlet in kPa
t1=0.367 //Static to Stagnation temperature ratio at entry from gas tables (M1,k=1.4,isentropic)
T1=To1*t1 //Static temperature at inlet in K
a1=sqrt(k*R*T1) //Sound velocity in m/s
C1=a1*M1 //Air velocity at inlet in m/s
X1=0.513 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.4
p2=0.226 //Static to Critical pressure ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
Pt=P1/p2 //Critical pressure in kPa
c1=1.949 //Static to Critical velocity ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
Ct=C1/c1 //Critical velocity in m/s
t2=0.439 //Static to Critical temperature ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
Tt=T1/t2 //Critical temperature in K
L1=(X1*D1)/(4*f) //Length of the pipe from inlet to critical state in m
L2=L1-L //Length of the pipe from required point to critical state in m
X2=(4*f*L2)/D2 //frictional constant fanno parameter
M2=2.14 //Mach number at inlet from gas tables (X2,k=1.4,fanno flow)
p3=0.369 //Static to Critical pressure ratio at outlet from gas tables,fanno flow tables @M2,k=1.4
P2=Pt*p3 //Exit pressure in kPa
c2=1.694 //Static to Critical velocity ratio at outlet from gas tables,fanno flow tables @M2,k=1.4
C2=Ct*c2 //Exit velocity in m/s
t3=0.623 //Static to Critical temperature ratio at outlet from gas tables,fanno flow tables @M2,k=1.4
T2=t3*Tt //Exit temperature in K

//output
printf('(A)Maximum length of the pipe is %3.4f m\n (B)Condition of air at exit:\n    Pressure is %3.2f kPa\n    Velocity is %3.2f m/s\n    Temperature is %3.2f K\n',L1,P2,C2,T2)
