clc
clear

//input data
M1=0.1 //Mach number at entrance
M2=0.5 //Mach number at a section
M3=1 //Mach number at critical condition
D=0.02 //Diameter of duct in m
f=0.004 //Frictional factor

//calculation
X1=66.922 //frictional constant fanno parameter from gas tables @M1=0.1
X2=1.069 //frictional constant fanno parameter from gas tables @M2=0.5
X3=0 //frictional constant fanno parameter from gas tables @M3=1
X4=X1-X3 ////frictional constant fanno parameter from M2=0.1 to M3=1
L1=(X4*D)/(4*f) //Length of the pipe in m
X5=X2-X3 //frictional constant fanno parameter from M2=0.5 to M3=1
L2=(X5*D)/(4*f) //Addition length of the pipe required to accelerate into critical condition in m
L=L1-L2 //Length of the pipe required to accelerate the flow from M1=0.1 to M2=0.5 in m

//output 
printf('(A)Length of the pipe required to accelerate the flow from M1=%3.1f to M2=%3.1f is %3.3f m\n (B)Additional length required to accelerate into critical condition is %3.5f m',M1,M2,L,L2)
