clc
clear
//input data
P00=700//Total-to-static pressure ratio
T00=1145//Inlet total temperature in K
P1=527//The pressure at the entry stage in bar
T1=1029//The temperature at the entry of turbine in K
P2=385//The pressure at the second stage in bar
T2=915//The temperature at the second stage entry in K
T02=925//The absolute temperature at the exit in K
D2mD1=0.49//The ratio of rotor exit mean diameter to rotor inlet diameter
N=24000//Blade speed in rpm
R1=8.314//The gas constant of given gas in kJ/kg.K
r=1.67//The ratio of specific heats of the gas
m=39.94//Molecular weight of a gas 

//calculations
R=R1/m//The universal gas constant in kJ/kg.K
Cp=(r*R)/(r-1)//The specific heat of air at constant pressure in kJ/kg.K
T2ss=T00*(P2/P00)^((r-1)/r)//Isentropic stage temperature at the exit in K
nts=(T00-T02)/(T00-T2ss)//Total-to-static efficiency of the turbine
U1=(Cp*1000*(T00-T02))^(1/2)//The impeller tip speed in m/s
D1=(U1*60)/(3.1415*N)//Rotor inlet diameter in m
D2m=D1*D2mD1//Rotor exit mean diameter in m
C1=(2*Cp*(T00-T1))^(1/2)//Absolute velocity at the entry in m/s
T1s=T00*(P1/P00)^((r-1)/r)//Isentropic temperature at the entry in K
Ln=(Cp*(T1-T1s))/((C1^2)/2)//Nozzle enthalpy loss coefficient
C2=(2*Cp*1000*(T02-T2))^(1/2)//The temperature at the exit of turbine in K
U2=(3.14*D2m*N)/(60)//Peripheral velocity of impeller at exit in m/s
W2=((C2^2)+(U2^2))^(1/2)//Resultant relative velocity at the exit in m/s
T2s=T1*(P2/P1)^((r-1)/r)//stage temperature at the exit in K
Lr=(Cp*1000*(T2-T2s))/((W2^2)/2)//Rotor enthalpy loss coefficient
ntt=1/((1/nts)-((C2^2)/(2*U1^2)))//Total-to-total efficiency

//output
printf('(a)Total-to-static efficiency of the turbine is %3.3f\n(b)\n    (1)Rotor inlet diameter is %3.3f m\n    (2)Rotor exit mean diameter is %3.3f m\n(c)\n    (1)Nozzle enthalpy loss coefficient is %3.4f\n    (2)Rotor enthalpy loss coefficient is %3.4f\n(d)Total-to-total efficiency is %3.4f',nts,D1,D2m,Ln,Lr,ntt)
