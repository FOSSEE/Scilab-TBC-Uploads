clc
clear

//input data
f=0.002 //frictional factor
C1=130 //Air velocity at inlet in m/s
T1=400 //Inlet temperature at inlet in K
P1=250 //Inlet pressure at inlet in kPa
D=0.16 //Inlet duct diameter in m
p1=0.8 //Stagnation pressure ratio at exit to entry when loss in stagnation pressure is 20%
L1=35 //Length of duct from inlet to required section
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
a1=sqrt(k*R*T1) //Sound velocity in m/s
M1=C1/a1 //Mach number at inlet
p2=0.9295 //Static to Stagnation pressure ratio at entry from gas tables (M1,k=1.4,isentropic)
Po1=P1/p2 //Stagantion pressure at inlet in kPa
Po2=0.8*Po1 //Stagantion pressure at outlet in kPa
p3=1.89725 //Stagnation pressure ratio at inlet to critical state from gas tables (M1,k=1.4,fanno flow)
Pot=Po1/p3 //Stagnation pressure at critical state in kPa
X1=4.273 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.4
p4=3.33725 //Static Pressure ratio from gas tables (fanno flow tables,k=1.4,M=0.5)
Pt=P1/p4 //Static critical pressure in kPa
t1=1.175 //Static temperature ratio from gas tables (fanno flow tables,k=1.4,M=0.5) 
Tt=T1/t1 //Static critical temperature in K
c1=0.347 //Velocity ratio from gas tables (fanno flow tables,k=1.4,M=0.5)
Ct=C1/c1 //Critical velocity in m/s
p5=Po2/Pot //Pressure ratio
M2=0.43 //Mach number at p1=0.8
X2=1.833 //frictional constant fanno parameter from gas tables,fanno flow tables @M2,k=1.4
X3=X1-X2 //overall frictional constant fanno parameter
L2=(X3*D)/(4*f) //Length of the pipe in m, (from required section to critical state) 
L3=(X1*D)/(4*f) //Length of the pipe in m, (from required inlet to critical state) 
L4=L3-L1 //Length of the pipe in m
X4=(4*f*L3)/D //frictional constant fanno parameter
M3=0.39 //Mach number at L1=35m
p6=2.767 //Static to Critical pressure ratio at outlet from gas tables,fanno flow tables @M3,k=1.4
P2=Pt*p6 //Exit pressure in kPa
t2=1.1645 //Static to Critical temperature ratio at outlet from gas tables,fanno flow tables @M3,k=1.4
T2=Tt*t2 //Exit temperature in K
c2=0.42087 //Static to Critical velocity ratio at outlet from gas tables,fanno flow tables @M3,k=1.4
C2=Ct*c2 //Exit velocity in m/s

//output
printf('(A)Length of pipe required for p=%3.1f m is %3.3f m\n (B)Properties of air at section %3i from inlet:\n    Temperature is %3.3f K\n    Pressure is %3.2f kPa\n    Velocity is %3.1f m/s\n (C)Maximum length of the pipe is %3.2f m',p1,L2,L1,T2,P2,C2,L3)
