clc
clear

//input data
M1=0.25 //Initial Mach number 
M2=0.75 //Final mach number 
P1=1.5 //Inlet pressure in bar
T1=300 //Inlet temperature in K
k=1.4 //Adiabatic constant
R=0.287 //Gas constant in kJ/kg-K

//calculation
a1=sqrt(k*R*10^3*T1) //Sound velocity in m/s, R in J/kg
C1=a1*M1 //air velocity in m/s
p1=4.3615 //Pressure ratio at entry from gas tables @M1,k
Pt=P1/p1 //Static critical pressure in kPa
c1=0.272 //Velocity ratio from gas tables (fanno flow tables,k=1.4,M1)
Ct=C1/c1 //Critical velocity in m/s
p2=1.385 //Pressure ratio at exit from gas tables @M2,k
P2=Pt*p2 //Exit pressure in bar
c2=0.779 //Velocity ratio at exit from gas tables @M2,k
C2=Ct*c2 //Exit velocity in m/s

//output
printf('Final pressure and velocity are %3.4f bar and %3.2f m/s',P2,C2)
