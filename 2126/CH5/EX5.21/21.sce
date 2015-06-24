clc
clear

//Input data
P1=0.685 //Inlet pressure in bar
T1=310 //Inlet temperature in K
D=0.6 //Duct diameter in m
M1=3 //Mach number at entry
Mx=2.5 //Mach number upstream of shock 
M2=0.8 //Mach number at outlet
f=0.005 //Friction factor
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
d1=P1*10^5/(R*T1) //Density at inlet in kg/m^3
a1=sqrt(k*R*T1) //Velocity of sound at inlet in m/s 
C1=M1*a1 //Air velocity at inlet in m/s
A1=%pi*D^2/4 //Inlet Area of the duct in m^2
m=d1*C1*A1 //Mass flow rate in kg/s
p1=0.218 //Static to Critical pressure ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
Pt1=P1/p1 //Critical pressure in bar 
t1=0.428 //Static to Critical temperature ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
Tt1=T1/t1 //Critical temperature in K
X1=0.522 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.4
p2=0.292 //Ratio of Static pressure before shock to critical pressure at entry from gas tables (fanno flow,Mx,k=1.4)
Px=Pt1*p2 //pressure before shock in bar
t2=0.533 //Ratio of Static temperature before shock to critical temperature at entry from gas tables (fanno flow,Mx,k=1.4) 
Tx=Tt1*t2 //Temperature before shock in K
Xx=0.432 //frictional constant fanno parameter from gas tables,fanno flow tables @Mx,k=1.4
X3=X1-Xx //Overall frictional constant fanno parameter upstream of duct
L1=(X3*D)/(4*f) //Length upstream of duct in m
My=0.513 //Mach number downstream of shock from gas tables @Mx
p3=7.125 //Static pressure ratio after and before the shock from gas tables @My
Py=Px*p3 //Pressure after shock in bar
t3=2.138 //Temperature ratio after and before the shock from gas tables @My
Ty=Tx*t3 //temperature after shock in K
p4=2.138 //Ratio of pressure after shock to pressure at critical state from gas tables @My
Pt=Py/p4 //Critical pressure in bar
t4=1.143 //Ratio of temperature after shock to temperature at critical state from gas tables @My
Tt=Ty/t4 //Critical temperature in K
p5=1.289 //Ratio of pressure at exit to pressure at critical state from gas tables @M2
P2=Pt*p5 //Exit pressure in bar 
t5=1.064 //Ratio of temperature at exit to temperature at critical state from gas tables @M2 
T2=Tt*t5 //Exit temperature in K
Xy=1.069 //frictional constant fanno parameter from gas tables,fanno flow tables @My,k=1.4
X2=0.073 //frictional constant fanno parameter from gas tables,fanno flow tables @M2,k=1.4
X4=Xy-X2 //Overall frictional constant fanno parameter downstream of duct
L2=(X4*D)/(4*f) //Length downstream of duct in m

//Output
printf('(A)Length L1 and L2 are %3.1f m and %3.2f m respectively\n (B)State of air at exit:\n    Pressure is %3.3f bar\n    Temperature is %3.1f K\n (C)Mass flow rate through the duct is %3.2f kg/s',L1,L2,P2,T2,m)
