clc
clear

//Input data
D=0.4 //Duct diameter in m
Po=12 //Stagnation pressure in kPa
To=600 //Stagnation temperature in K
f=0.0025 //Friction factor
M1=1.8 //Mach number at entry
M2=1 //Mach number at outlet
Mx=1.22 //Mach number upstream of shock 

//Calculations
A2=%pi*D^2/4 //Exit area in cm^2
p1=0.174 //Static to Stagnation pressure ratio at entry from gas tables (M1,k=1.4,isentropic)
P1=Po*p1 //Inlet pressure in bar
t1=0.607 //Static to Stagnation temperature ratio at entry from gas tables (M1,k=1.4,isentropic)
T1=To*t1 //Inlet temperature in K
a1=1.094 //Ratio of area at exit to critical area across shock from isentropic gas tables @M1,k=1.4
Ax=A2/a1 //Area before the shock in cm^2
Dt=sqrt((Ax*4)/(%pi))*10^2 //Duct diameter at throat in cm
p2=0.474 //Static to Critical pressure ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
Pt=P1/p2 //Critical pressure in bar 
t2=0.728 //Static to Critical temperature ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
Tt=T1/t2 //Critical temperature in K
X1=0.242 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.4
p3=0.788 //Ratio of Static pressure before shock to critical pressure at entry from gas tables (fanno flow,Mx,k=1.4)
Px=Pt*p3 //pressure before shock in bar
t3=0.925 //Ratio of Static temperature before shock to critical temperature at entry from gas tables (fanno flow,Mx,k=1.4)
Tx=Tt*t3 //Temperature before shock in K
Xx=0.039 //frictional constant fanno parameter from gas tables,fanno flow tables @Mx,k=1.4
X3=X1-Xx //Overall frictional constant fanno parameter upstream of duct
L1=(X3*D)/(4*f) //Length upstream of duct in m
My=0.83 //Mach number downstream of shock from gas tables @Mx
p4=1.57 //Static pressure ratio after and before the shock from gas tables @My
Py=Px*p4 //Pressure after shock in bar
t4=1.141 //Temperature ratio after and before the shock from gas tables @My
Ty=Tx*t4 //temperature after shock in K
p5=1.2375 //Ratio of pressure after shock to pressure at critical state from gas tables @My
Pt=Py/p5 //Critical pressure in bar
t5=1.055 //Ratio of temperature after shock to temperature at critical state from gas tables @My
Tt=Ty/t5 //Critical temperature in K
Xy=0.049 //frictional constant fanno parameter from gas tables,fanno flow tables @My,k=1.4
X2=0 //frictional constant fanno parameter from gas tables,fanno flow tables @M=1,k=1.4
X4=Xy-X2 //Overall frictional constant fanno parameter downstream of duct
L2=(X4*D)/(4*f) //Length downstream of duct in m
L=L1+L2 //Length of duct in m

//Output
printf('(A)Length of the pipe is %3.2f m\n (B)Diameter of the nozzle throat is %3.3f cm\n (C)At the pipe exit:\n    Pressure is %3.3f bar\n    Temperature is %3.2f K',L,Dt,Pt,Tt)
