clc
//solution
// initialization of variables


r=18 // compression ratio
k=1.4 // polytropic index for air
R=0.287 // specific gas constant for air
Cv=0.717 // specific heat at constant volume
Cp=1.0 // specific heat at constant pressure
T1=200+273 // lower temperaure in kelvin
P1=200 // low pressure in kPa
T3=2000 // higher temperature of cycle in kelvin

v1=R*T1/P1 // specific volume at state 1 in m^3
v2=v1/r // specific volume after compression in m^3

T2=T1*(v1/v2)^(k-1) // temperature after compression
P2=P1*(v1/v2)^k // pressure after compression
P3=P2 // diesel cycle
v3=R*T3/P3 // volume at state 3

rc=v3/v2 // cutoff ratio

effi=1-((rc^k)-1)/(r^(k-1)*k*(rc-1))


printf("The thermal efficiency is %0.2f %% \n",effi*100)

v4=v1 // diesel cycle
T4=T3*(v3/v4)^(k-1) // adiabatic process

qin=Cp*(T3-T2) // using first law 
qout=Cv*(T4-T1) // heat rejected 

Wnet=qin-qout // net work
MEP=Wnet/(v1-v2) // expression of mean effective pressure in terms of work

printf(" The MEP is %i kPa",MEP)

