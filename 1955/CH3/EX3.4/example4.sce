clc
clear
//input data
D1=0.457//Impeller diameter at inlet in m
D2=0.762//Impeller diameter at exit in m
Cr2=53.4//Radial component of velocity at impeller exit in m/s
ss=0.9//Slip factor
N=11000//Impeller speed in rpm
P2=2.23//Static pressure at impeller exit in bar
T01=288//The inlet stagnation temperature in K
P01=1.013//The inlet stagnation pressure in bar
C1=91.5//Velocity of air leaving the guide vanes in m/s
a11=70//The angle at which air leaves the guide vanes in degrees
r=1.4//The ratio of specific heats of air
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K

//calculations
Cx1=C1*cosd(a11)//Inlet absolute velocity of air in tangential direction in m/s
Ca1=Cx1*tand(a11)//Radial component of absolute velocity at inlet in m/s
U1=(3.14*D1*N)/(60)//Peripheral velocity of impeller at inlet in m/s
Wx1=U1-Cx1//Relative whirl component of velocity at inlet in m/s
W1=((Wx1^2)+(Ca1^2))^(1/2)//Relative velocity at inlet in m/s
T1=T01-((C1^2)/(2*Cp))//The inlet air temperature in K
a1=(r*R*T1)^(1/2)//The velocity of air in m/s
M1r=W1/a1//Initial relative mach number
U2=(3.14*D2*N)/60//Peripheral velocity of impeller top at exit in m/s
W=(ss*U2^2)-(U1*Cx1)//Work done by the compressor in kJ/kg
T02=(W/Cp)+T01//The outlet stagnation temperature in K
Cx21=ss*U2//Absolute whirl component of velocity with slip consideration in m/s
C2=((Cx21^2)+(Cr2^2))^(1/2)//The absolute velocity of air at exit in m/s
T2=T02-((C2^2)/(2*Cp))//The exit temperature of air in K
P02=P2*(T02/T2)^(r/(r-1))//The exit stagnation pressure of compressor in bar
nc=(T01/(T02-T01))*(((P02/P01)^((r-1)/r))-1)//Total head isentropic efficiency

//output
printf('(1)The inlet relative mach number is %3.3f\n(2)The impeller total head efficiency is %3.3f',M1r,nc)
