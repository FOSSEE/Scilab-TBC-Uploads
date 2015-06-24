clc
clear
//input data
Cr2=28//Radial component of velocity at impeller exit in m/s
ss=0.9//The slip factor
U2=350//The impeller tip speed in m/s
A=0.08//The impeller area in m^2
nc=0.9//Total head isentropic efficiency
T01=288//The ambient air temperature in K
P01=1//The ambient air pressure in bar
r=1.4//The ratio of specific heats of air
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K

//calculations
Cx2=ss*U2//outlet absolute velocity of air in tangential direction in m/s
C2=((Cx2^2)+(Cr2^2))^(1/2)//Axial velocity component at the outlet in m/s
T=(ss*(U2^2))/Cp//Total change in temperature in K
T02=T+T01//The final ambient air temperature in K
T2=T02-((C2^2)/(2*Cp))//The actual final air temperature in K
M2=(C2)/(r*R*T2)^(1/2)//Exit absolute mach number
P=((1+(ss*T/T01))^(r/(r-1)))//The overall pressure ratio
P02=P*P01//The final ambient pressure in bar
P2=P02*(T2/T02)^(r/(r-1))//The absolute final pressure in bar
d2=(P2*10^5)/(R*T2)//The final density of air at exit in kg/m^3
m=d2*A*Cr2//The mass flow rate in kg/s

//output
printf('(a)The exit absolute mach number is %3.4f\n(b)The mass flow rate is %3.4f kg/s',M2,m)
