clc
clear

//input data
M1=0.25 //Mach number at entrance
f=0.01/4 //frictional factor
D=0.15 //inner pipe diameter in m
p1=0.8 //Stagnation pressure ratio at exit to entry when loss in stagnation pressure is 20%
M3=0.8 //Mach number at a section

//calculation
p2=2.4065 //Ratio of Stagnation pressure at entry from gas tables @M1,k=1.4
X1=8.537 //frictional constant fanno parameter from gas tables,fanno flow tables @M1
p3=p1*p2 //Ratio of Stagnation pressure at exit
M2=0.32 //Exit mach number at p1=0.8
X2=4.447 //frictional constant fanno parameter from gas tables,fanno flow tables @M2
L1=(X1*D)/(4*f) //Length of the pipe in m
L2=(X2*D)/(4*f) //Length of the pipe in m
L=L1-L2 //Overall length of the duct in m
p4=1.038 //Stagnation pressure ratio from M=1 to M3
PL=(1-(p4/p2))*100 //Percentage of stagnation pressure from inlet to section at which M3 in percent

//output
printf('(A)Length of the pipe is %3.2f m\n (B)Mach number at this exit is %3.2f\n (C)Percentage of stagnation pressure from inlet to section at which M=%3.1f is %3.2f percent\n (D)Maximum length to reach choking condition is %3.3f m',L,M2,M3,PL,L1)
