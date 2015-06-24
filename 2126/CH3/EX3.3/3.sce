clc
clear

//input data
D=0.05 //inner pipe diameter in m
Po=10 //Stagnation Pressure at reservoir in bar
To=400 //Stagnation temperature at reservoir in K
f=0.002 //frictional factor 
M1=3 //Mach number at entrance
M2=1 //Mach number at end of pipe
R=287 //Gas constant in J/kg-K
k=1.4 //Adiabatic constant

//calculation
X1=0.522 //frictional constant fanno parameter from gas tables @M1=3
X2=0 //frictional constant fanno parameter from gas tables @M2=1
X=X1-X2 //overall frictional constant fanno parameter
L=(X*D)/(4*f) //Length of the pipe in m
p1=0.0272 //Pressure ratio from gas tables (M=3,k=1.4,isentropic)
P1=p1*Po //Static pressure at entrance in bar
t1=0.3571 //Temperature ratio from gas tables (M=3,k=1.4,isentropic)
T1=t1*To //Static temperature at entrance in K
d1=(P1*10^5)/(R*T1) //Density of air in kg/m^3, P1 in Pa
a1=sqrt(k*R*T1) //Sound velocity in m/s
C1=a1*M1 //air velocity in m/s
A1=(%pi*D^2)/4 //Cross sectional area of pipe in m^2
m=d1*A1*C1 //Mass flow rate in kg/s

//output
printf('(A)Length of the pipe is %3.2f m\n (B)Mass flow rate is %3.4f kg/s',L,m)
