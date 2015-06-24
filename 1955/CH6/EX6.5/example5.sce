clc
clear
//input data
P00=3.5//Total-to-static pressure ratio
P2=1//Exit pressure in bar
T00=923//Inlet total temperature in K
U1Cs=0.66//Blade to isentropic speed ratio
D=0.45//Rotor diameter ratio
N=16000//Speed from nozzle in rpm
a11=20//Nozzle exit angle in degree
nn=0.95//Nozzle efficiency
b1=0.05//Rotor width at inlet in m
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K
r=1.4//The ratio of specific heats of air


//Calculations
T2s=T00*(1/P00)^((r-1)/r)//Isentropic temperature at the exit in K
Cs=(2*Cp*(T00-T2s))^(1/2)//The isentropic velocity in m/s
U1=U1Cs*Cs//The impeller tip speed in m/s
D1=(U1*60)/(3.14*N)//Rotor inlet diameter in m
D2=D*D1//Rotor outlet diameter in m
Cr2=U1*tand(a11)//The relative velocity at the exit in m/s
U2=(3.1415*D2*N)/60//Peripheral velocity of impeller at exit in m/s
b22=atand(Cr2/U2)//The air angle at rotor exit in degree
T02=T00-((U1^2)/(Cp))//The absolute temperature at the exit in K
T2=T02-((Cr2^2)/(2*Cp))//The temperature at the exit of turbine in K
T1=T2+((U1^2)/(2*Cp))//The temperature at the entry of turbine in K
T1s=T00-((T00-T1)/nn)//Isentropic temperature at the entry in K
P1=P00*(T1s/T00)^(r/(r-1))//The pressure at the entry stage in bar
d1=(P1*10^5)/(R*T1)//The density of the air  at the inlet in kg/m^3
A1=3.1415*D1*b1//The area at the inlet in m^2
Cr1=Cr2//The relative velocity at the entry in m/s
m=d1*A1*Cr1//The mass flow rate for a 90degree IFR turbine Degree of Reaction is 0.5 in kg/s
W=(m*U1^2)*10^-6//Power developed in MW
d2=(P2*10^5)/(R*T2)//The density of the air at the exit in kg/m^3
b2=m/(d2*3.141*D2*Cr2)//Rotor width at the exit in m
D2h=D2-b2//Hub diameter at the exit in m
D2t=D2+b2//Tip diameter at the exit in m
nts=(W*10^6)/(m*Cp*(T00-T2s))//Total-to-static efficiency
C1=U1/cosd(a11)//Absolute velocity at the entry in m/s
Ln=(Cp*(T1-T1s))/((C1^2)/2)//Nozzle enthalpy loss coefficient
W2=((U2^2)+(Cr2^2))^(1/2)//Resultant relative velocity at the exit in m/s
T2s=T1*(P2/P1)^((r-1)/r)//Isentropic temperature at the exit in K
Lr=(Cp*(T2-T2s))/((W2^2)/2)//Rotor enthalpy loss coefficient

//output
printf('(a)\n    (1)Rotor inlet diameter is %3.2f m\n    (2)Rotor outlet diameter is %3.3f m\n(b)The air angle at rotor exit is %3.2f degree\n(c)The mass flow rate for a 90degree IFR turbine Degree of Reaction is 0.5 is %3.2f kg/s\n(d)Power developed is %3.3f MW\n(e)\n    (1)Hub diameter at the exit is %3.4f m\n    (2)Tip diameter at the exit is %3.4f m\n(f)Total-to-static efficiency is %3.4f\n(g)Nozzle enthalpy loss coefficient is %3.4f\n(h)Rotor enthalpy loss coefficient is %3.4f',D1,D2,b22,m,W,D2h,D2t,nts,Ln,Lr)
