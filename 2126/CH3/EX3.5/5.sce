clc
clear

//input data
P1=120 //Static pressure at entrance in bar
T1=313 //Static temperature at entry in Kelvin
M1=2.5 //Mach number at entrance
M2=1.8 //Mach number at exit
D=0.2 //inner pipe diameter in m
f=0.01/4 //frictional factor
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
a1=sqrt(k*R*T1) //Sound velocity in m/s
C1=a1*M1 //air velocity in m/s
p1=0.292 //Static Pressure ratio from gas tables (fanno flow tables,k=1.4,M=2.5)
Pt=P1/p1 //Static critical pressure in kPa
t1=0.533 //Static temperature ratio from gas tables (fanno flow tables,k=1.4,M=2.5)
Tt=T1/t1 //Static critical temperature in K
c1=1.826 //Velocity ratio from gas tables (fanno flow tables,k=1.4,M=2.5)
Ct=C1/c1 //Critical velocity in m/s
X1=0.432 //frictional constant fanno parameter from gas tables,fanno flow tables @M1=3
X2=0 //frictional constant fanno parameter from gas tables @M2=1
X3=X1-X2 //overall frictional constant fanno parameter
L1=(X3*D)/(4*f) //Maximum length of the pipe in m
p2=0.474 //Static Pressure ratio from gas tables (fanno flow tables,k=1.4,M=1.8)
P2=Pt*p2 //Static pressure in kPa
t2=0.728 //static temperature ratio from gas tables (fanno flow tables,k=1.4,M=1.8)
T2=Tt*t2 //Static temperature in K
c2=1.536 //Velocity ratio from gas tables (fanno flow tables,k=1.4,M=1.8)
C2=c2*Ct //Critical velocity in m/s
X4=0.242 //frictional constant fanno parameter from gas tables,fanno flow tables @M=1.8
X5=X4-X2 //overall frictional constant fanno parameter
L2=(X5*D)/(4*f) //Length between sonic and oulet section
L=L1-L2 //Length of the pipe in m

//output
printf('(A)Maximum length of the pipe is %3.2f m\n (B)Properties of air at sonic condition:\n    Pressure is %3i kPa\n    Temperature is %3.2f K\n    Velocity is %3.1f m/s\n (C)Length of the pipe is %3.1f m\n (D)Properties of air at M2=%3.1f:\n    Pressure is %3i kPa\n    Temperature is %3.2f K\n    Velocity is %3.2f m/s\n',L1,Pt,Tt,Ct,L,M2,P2,T2,C2)
