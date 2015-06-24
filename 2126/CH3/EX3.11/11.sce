clc
clear

//input data
D=0.3 //inner duct diameter in m
P1=10 //Static pressure at entrance in bar
T1=400 //Static temperature at entry in Kelvin
M1=3 //Mach number at entrance
M2=1 //Mach number at exit
k=1.3 //Adiabatic constant
R=287 //Specific Gas constant in J/kg-K, wrong printing in question
f=0.002 //frictional factor

//calculation
p1=0.233 //Pressure ratio from gas tables (M=3,k=1.4,isentropic)
Pt=P1/p1 //Static pressure at entrance in bar
t1=0.489 //Temperature ratio from gas tables (M=3,k=1.4,isentropic)
Tt=T1/t1 //Static temperature at entrance in K
X1=0.628 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.3
L1=(X1*D)/(4*f) //Length of the pipe in m
d_t=(Pt*10^5)/(R*Tt) //Density at critical state in kg/m^3, Pt in Pa
at=sqrt(k*R*Tt) //Sound velocity in m/s, R in J/kg 
Ct=at //air velocity in m/s
At=(%pi*D^2)/4 //Critical area in m^2
m=d_t*At*Ct //Mass flow rate in kg/s

//output
printf('(A)Length of the pipe is %3.2f m\n (B)Mass flow rate is %3.3f kg/s',L1,m)
