clc
clear
//input data
P0=4//Overall stage pressure ratio 
T00=557//Temperature at entry in K
P3=1//Diffuser exit pressure in bar
m=6.5//Mass flow rate of air in kg/s
ps1=0.3//Flow coefficient 
N=18000//Speed of the turbine in rpm
Dt=0.42//Rotor tip diameter in m
D2m=0.21//Mean diameter at rotor exit in m
R=287//The universal gas constant in J/kg.K
Cp=1.005//The specific heat of air at constant pressure in kJ/kg.K
r=1.4//The ratio of specific heats of air

//calculations
U1=(3.1415*Dt*N)/60//Peripheral velocity of impeller at inlet in m/s
Cr1=ps1*U1//The radial velocity at inlet in m/s
a11=atand(Cr1/U1)//The nozzle exit air angle in degree
W=m*U1^2*10^-3//Power developed by turbine in kW
dT=(1/P0)^((r-1)/r)//The total isentropic temperature ratio in entire process 
T3s=dT*T00//The final isentropic temperature at exit in K
dh2=W/m//The absolute enthalpy change in the first two stages in kJ/kg
ns=dh2/(Cp*(T00-T3s))//The stage efficiency of the turbine
T02=T00-(W/(m*Cp))//The absolute temperature at the entry of second stage in K
T03=T02//The absolute temperature at exit of second stage in K
dH=Cp*(T02-T3s)//The total enthalpy loss in kJ/kg
dHn=dH/2//The enthalpy loss in the nozzle in kJ/kg
C1=Cr1/sind(a11)//Absolute velocity at the inlet in m/s
dH0=((C1^2)/(2000*Cp))+(dHn)//The isentropic absolute enthalpy loss in nozzle in kJ/kg
dT0=dH0/Cp//The isentropic absolute temperature loss in nozzle in K
T1s=T00-dT0//The isentropic temperature at the entry in K
P1=P0*(T1s/T00)^(r/(r-1))//The pressure at the entry of turbine in bar
T1=T00-((C1^2)/(2000*Cp))//The temperature at the entry of turbine in K
d1=(P1*10^5)/(R*T1)//The density of the air at inlet in kg/m^3
b1=m/(d1*Cr1*3.141*Dt)//The width of the rotor at inlet in m
C2=Cr1//The avsolute velocity at the second stage entry in m/s
T2=T02-((C2^2)/(2000*Cp))//The temperature at the second stage entry in K
P23=(T2/T03)^(r/(r-1))//The pressure ratio at the second stage
P2=P23*P3//The pressure at the second stage in bar
d2=(P2*10^5)/(R*T2)//The density of the air at second stage in kg/m^3
C2=Cr1//The absolute velocity at the second stage in m/s
A2=m/(d2*C2)//The area of cross section at the second stage in m^2
h2=(A2/(3.14*D2m))//The rotor blade height at the exit in m
M1=C1/(r*R*T1)^(1/2)//The mach number at the nozzle
U2=(3.14*D2m*N)/60//The Peripheral velocity of impeller at exit in m/s
M2r=(((C2^2)+(U2^2))^(1/2))/(r*R*T2)^(1/2)//The mach number at the rotor exit 
Ln=(dHn*10^3)/((C1^2)/2)//The nozzle loss coefficient
Lr=(dHn*10^3)/(((((C2^2)+(U2^2))^(1/2))^2)/2)//The rotor loss coefficient

//output
printf('(a)The nozzle exit air angle is %3.2f degree\n(b)The power developed is %3.1f kW\n(c)The stage efficiency is %3.4f \n(d)The rotor width at the entry is %3.5f m\n(e)The rotor blade height at the exit is %3.4f m\n(f)\n    (1)The mach number at the nozzle exit is %3.4f\n    (2)The mach number at the rotor exit is %3.2f\n(g)\n    (1)The nozzle loss coefficient is %3.4f\n    (2)The rotor loss coefficient is %3.3f',a11,W,ns,b1,h2,M1,M2r,Ln,Lr)
