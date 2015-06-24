clc
clear

//input data
D=0.12 //inner duct diameter in m
f=0.004 //frictional factor
M1=0.4 //Inlet Mach number 
P1=300 //Static pressure at inlet in kPa
T1=310 //Static temperature at inlet in K
M2=0.6 //Exit mach number
k=1.4 //Adiabatic constant

//calculation
p1=2.118 //Static to Critical pressure ratio at inlet from gas tables,fanno flow tables @M1,k=1.4
Pt=P1/p1 //Critical pressure in kPa
X1=1.968 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.4
p2=1.408 //Static to Critical pressure ratio at outlet from gas tables,fanno flow tables @M2,k=1.4
P2=Pt*p2 //Exit pressure in kPa
X2=0.299 //frictional constant fanno parameter from gas tables,fanno flow tables @M2,k=1.4
X3=X1-X2 //Overall frictional constant fanno parameter
L1=(X3*D)/(4*f) //Length of the pipe in m
T2=T1 //Exit temperature in K, Since isothermal flow
Ttt=T1 //Critical temperature at critical state, Since isothermal flow 
Mtt=1/sqrt(k) //Limiting Mach number
L2=(X1*D)/(4*f) //Length of the duct required to attain limiting mach number in m

//output
printf('(A)Length of the duct required to chnage the mach number to %3.1f is %3.4f m\n (B)Pressure and temperature at M=%3.1f is %3i kPa and %3i K respectively\n (C)Length of the duct required to attain limiting mach number is %3.3f m\n (D)State of air at limiting mach number %3.3f is subsonic',M2,L1,M2,P2,T2,L2,Mtt)
