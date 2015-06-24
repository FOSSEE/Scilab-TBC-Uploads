clc
clear

//input data
D1=0.134 //Inlet duct diameter in m
Po1=7 //Stagnation pressure at inlet in bar
P1=0.245 //Static pressure at 5*D1 i.e. L1 in bar
P2=0.5 //Static pressure at 33*D1 i.e. L2 in bar
D2=0.0646 //throat diameter in m 
L1=5*D1 //Length of nozzle till section-1 in m
L2=33*D1 //Length of nozzle till section-2 in m 

//calculation
ar=(D1/D2)^2 //Ratio of areas
p1=P1/Po1 //Pressure ratio
APR1=p1*ar //Area Pressure ratio i.e. (A1*P1)/(At*Po1)
M1=2.54 //Mach number at inlet from isentropic gas tables @APR1 
X1=0.44 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.4
APR2=0.3073 //Area Pressure ratio i.e. (A2*P2)/(At*Po1)
M2=1.54 //Exit mach number
X2=0.151 //frictional constant fanno parameter from gas tables,fanno flow tables @M2,k=1.4
X3=X1-X2 //overall frictional constant fanno parameter
L3=L2-L1 //Length of the nozzle (Section-1 to Section-2) in m 
f=(X3*D1)/(4*L3) //frictional factor

//output
printf('(A)Mach number at %3.3f m and %3.3f m are %3.2f and %3.2f respectively\n (B)Mean value of friction between two sections is %3.5f',L1,L2,M1,M2,f)
