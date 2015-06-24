clc
clear

//input data
M1=0.25 //Mach number at entrance
f=0.04/4 //frictional factor
D=0.15 //inner duct diameter in m
p1=0.9 //Stagnation pressure ratio at exit to entry when loss in stagnation pressure is 10%
ds=190 ///Change in entropy in J/kg-K
k=1.3 //Adiabatic constant
R=287 //Specific Gas constant in J/kg-K, wrong printing in question

//calculation
p2=2.4064 //Ratio of stagnation pressures at inlet to critical state from gas tables fanno flow tables @M1,k=1.3
X1=8.537 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.3
p3=p1*p2 //Ratio of stagnation pressures at exit to critical state from gas tables fanno flow tables @M1,k=1.3
M2=0.28 //Mach number at p1=0.9 from gas tables @p3
X2=6.357 //frictional constant fanno parameter from gas tables,fanno flow tables @M2,k=1.3
X3=X1-X2 //overall frictional constant fanno parameter
L1=(X3*D)/(4*f) //Length of the pipe in m
p4=exp(ds/R) //Ratio of Stagnation pressure at entry to Stagnation pressure where ds=190 
p5=p1/p4 //Ratio of Stagnation pressures where ds=190 to critical state
M3=0.56 //Mach number where ds=190
X4=0.674 //frictional constant fanno parameter from gas tables,fanno flow tables @M3,k=1.3
X5=X1-X4 //overall frictional constant fanno parameter
L2=(X5*D)/(4*f) //Length of the pipe in m

//output
printf('(A)Length of the pipe is %3.3f m\n (B)Length of the pipe would require to rise entropy by %3i J/kg-K is %3.5f m\n (C)Mach number is %3.2f',L1,ds,L2,M3)
