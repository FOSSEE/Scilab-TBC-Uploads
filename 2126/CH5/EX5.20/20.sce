clc
clear

//Input data
k=1.3 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K
P1=1 //Inlet pressure in bar
T1=400 //Inlet temperature in K
D=0.3 //Duct diameter in m
M1=2 //Mach number at entry
Mx=1.5 //Mach number upstream of shock 
M2=1 //Mach number at outlet
f=0.003 //Friction factor

//Calculation
d1=P1*10^5/(R*T1) //Density at inlet in kg/m^3
a1=sqrt(k*R*T1) //Velocity of sound at inlet in m/s 
C1=M1*a1 //Gas velocity at inlet in m/s
A1=%pi*D^2/4 //Inlet Area of the duct in m^2
m=d1*C1*A1 //Mass flow rate in kg/s
p1=0.131 //Static to Stagnation pressure ratio at entry from gas tables (M1,k=1.4,isentropic)
Po1=P1/p1 //Stagantion pressure at inlet in bar
t1=0.625 //Static to Stagnation temperature ratio at entry from gas tables (M1,k=1.4,isentropic)
To1=T1/t1 //Stagnation temperature at inlet in K
p2=0.424 //Static to Critical pressure ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
Pt1=P1/p2 //Critical pressure in bar
p3=1.773 //Stagnation pressure ratio at entry to critical state from gas tables,fanno flow tables @M1,k=1.4
Pto1=Po1/p3 //Stagnation pressure at critical state in bar 
t2=0.719 //Static to Critical temperature ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
Tt1=T1/t2 //Critical temperature in K
X1=0.357 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.4
p4=0.618 //Ratio of Static pressure before shock to critical pressure at entry from gas tables (fanno flow,Mx,k=1.4) 
Px=Pt1*p4 //pressure before shock in bar
t3=0.860 //Ratio of Static temperature before shock to critical temperature at entry from gas tables (fanno flow,Mx,k=1.4) 
Tx=Tt1*t3 //Temperature before shock in K
p5=1.189 //Ratio of Stagnation pressure before shock to Stagnation pressure at critical state at entry from gas tables (fanno flow,Mx,k=1.4) 
Pox=Pto1*p5 //Stagnation pressure at critical state in bar
Xx=0.156 //frictional constant fanno parameter from gas tables,fanno flow tables @Mx,k=1.4
X3=X1-Xx //Overall frictional constant fanno parameter upstream of duct
L1=(X3*D)/(4*f) //Length upstream of duct in m
My=0.7 //Mach number downstream of shock from gas tables @Mx
p6=2.413 //Static pressure ratio after and before the shock from gas tables @My
Py=Px*p6 //Pressure after shock in bar
t4=1.247 //Temperature ratio after and before the shock from gas tables @My
Ty=Tx*t4 //temperature after shock in K
p7=0.926 //Stagnation pressure ratio after and before the shock from gas tables @My
Poy=Pox*p7 //Stagnation pressure after shock in bar
p8=1.479 //Ratio of pressure after shock to pressure at critical state from gas tables @My
Pt=Py/p8 //Critical pressure in bar
p9=1.097 //Ratio of Stagnation pressure after shock to Stagnation pressure at critical state from gas tables @My
Pot=Poy/p9 //Stagnation pressure at critical state in bar
t5=1.071 //Ratio of temperature after shock to temperature at critical state from gas tables @My
Tt=Ty/t5 //Critical temperature in K
Xy=0.231 //frictional constant fanno parameter from gas tables,fanno flow tables @My,k=1.4
X2=0 //frictional constant fanno parameter from gas tables,fanno flow tables @M=1,k=1.4
X4=Xy-X2 //Overall frictional constant fanno parameter downstream of duct
L2=(X4*D)/(4*f) //Length downstream of duct in m
ds1=R*log(Po1/Pox) //Change of entropy upstream of the shock in J/kg-K
ds2=R*log(Pox/Poy) //Change of entropy across the shock in J/kg-K
ds3=R*log(Poy/Pot) //Change of entropy downstream of the shock in J/kg-K

//Output
printf('(A)Length of the duct upstream and downstream of the duct is %3.3f m and %3.3f m respectively\n (B)Mass flow rate of the gas is %3.3f kg/s\n (C)Change of entropy:\n    Upstream of the shock is %3.2f J/kg-K\n    Across the shock is %3.3f J/kg-K\n    Downstream of the shock is %3.4f J/kg-K',L1,L2,m,ds1,ds2,ds3)
