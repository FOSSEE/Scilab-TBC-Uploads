clc
clear

//input data
D=0.0254 //inner pipe diameter in m
f=0.003 //frictional factor
M1=2.5 //Inlet Mach number 
To1=310 //Stagnation temperature at inlet in K
P1=0.507 //Static pressure at inlet in kPa
M2=1.2 //Exit mach number 
k=1.4 //Adiabatic constant
R=287 //Gas constant in J/kg-K

//calculation
t1=0.4444 //Static to Stagnation temperature ratio at entry from gas tables (M1,k=1.4,isentropic)
T1=To1*t1 //Static temperature at inlet in K
p1=0.05853 //Static to Stagnation pressure ratio at entry from gas tables (M1,k=1.4,isentropic)
Po1=P1/p1 //Stagantion pressure at inlet in kPa
a1=sqrt(k*R*T1) //Sound velocity at inlet in m/s, R in J/kg
C1=a1*M1 //air velocity at inlet in m/s
c1=2.95804 //Static to Critical velocity ratio at inlet from gas tables,isothermal tables @M1,k=1.4
Ctt=C1/c1 //Critical velocity at isothermal state in m/s
p2=0.33806 //Static to Critical pressure ratio at inlet from gas tables,isothermal @M1,k=1.4
Ptt=P1/p2 //Critical pressure at isothermal state in bar
p3=3.61691 //Stagnation pressure ratio at inlet to isothermal state from gas tables,isothermal tables @M1,k=1.4
Pott=Po1/p3 //Critical pressure at isothermal state in K
t2=1.968748 //Stagnation temperature ratio at inlet to isothermal state from gas tables,isothermal tables @M1,k=1.4
Tott=To1/t2 //Critical temperature at isothermal state in K
X1=1.28334 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.4
c2=1.4186 //Static to Critical velocity ratio at exit from gas tables,isothermal tables @M2,k=1.4
C2=Ctt*c2 //Exit velocity in m/s
p4=0.7043 //Static to Critical pressure ratio at inlet from gas tables,isothermal @M2,k=1.4
P2=Ptt*p4 //Exit pressure in bar
p5=1.07026 //Stagnation pressure ratio at inlet to isothermal state from gas tables,isothermal tables @M2,k=1.4
Po2=Pott*p5 //Stagnation pressure at exit in bar 
t3=1.127 //Stagnation temperature ratio at inlet to isothermal state from gas tables,isothermal tables @M2,k=1.4
To2=Tott*t3 //Stagnation temperature at exit in bar
T2=T1 //Exit temperature in K, Since isothermal flow
X2=0.19715 //frictional constant fanno parameter from gas tables,fanno flow tables @M2,k=1.4
X3=X1-X2 //Overall frictional constant fanno parameter
L1=(X3*D)/(4*f) //Length of the pipe in m
d1=(P1*10^5)/(R*T1) //Density of air in kg/m^3, P1 in Pa
A1=(%pi*D^2)/4 //Cross sectional area of pipe in m^2
m=d1*A1*C1 //Mass flow rate in kg/s

//output
printf('At M=%3.1f :\n (A)Static pressure and static temperature are %3.5f bar and %3.3f K respectively\n (B)Stagnation pressure and temperature are %3.4f bar and %3.3f K respectively\n (C)Velocity of air is %3.3f m/s\n (D)Distance of the section from innlet is %3.3f m\n (E)Mass flow rate is %3.5f kg/s',M2,P2,T2,Po2,To2,C2,L1,m)
