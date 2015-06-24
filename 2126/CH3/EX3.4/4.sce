clc
clear

//input data
C1=235 //Velocity at entrance in m/s
P1=13 //Static Pressure at entry in bar
P2=10 //Static Pressure at a point in duct in bar
T1=543 //Static temperature at entry in Kelvin
D=0.15 //inner duct diameter in m
f=0.005 //frictional factor
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
a1=sqrt(k*R*T1) //Sound velocity in m/s
M1=C1/a1 //Mach number at entry
p1=2.138 //Static Pressure ratio from gas tables (fanno flow tables,k=1.4,M=0.5)
Pt=P1/p1 //Static critical pressure in bar
t1=1.143 //Static temperature ratio from gas tables (fanno flow tables,k=1.4,M=0.5) 
Tt=T1/t1 //Static critical temperature in K
c1=0.534 //Velocity ratio from gas tables (fanno flow tables,k=1.4,M=0.5)
Ct=C1/c1 //Critical velocity in m/s
p2=1.644 //Pressure ratio from gas tables (fanno flow tables,k=1.4)
M2=0.64 //Mach number from gas tables (fanno flow tables,k=1.4,p2)
c2=0.674 //Velocity ratio from gas tables (fanno flow tables,k=1.4,p2)
C2=Ct*c2 //Air velocity at P2 in m/s
t2=1.109 //Temperature ratio from gas tables (fanno flow tables,k=1.4,p2)
T2=t2*Tt //Satic temperature at P2 is K
X1=1.06922 //frictional constant fanno parameter from gas tables @M1
X2=0.353 //frictional constant fanno parameter from gas tables @M2
X=X1-X2 //overall frictional constant fanno parameter
L=(X*D)/(4*f) //Length of the pipe in m

//output
printf('(A)Temperature and velocity at section of the duct where the pressure has dropped to %3i bar due to friction are %3.1f K and %3.2f m/s\n (B)The distance between two section is %3.3f m',P2,T2,C2,L)
