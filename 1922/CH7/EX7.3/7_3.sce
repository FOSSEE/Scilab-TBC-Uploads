clc
clear
//Initialization of variables
T=154.5 //C
P=8620*10^3 //Pa
Tc=135 //C
T0=273.1 //C
Pc=3648*10^3 //Pa
w=0.1756
V=0.154 
R=8.3143*10^3
D=0.35
Vc=0.263 //m^3/kmol
//calculations
Tr=(T+T0)/(T0+Tc)
Pr= P/Pc
Zc=Pc*Vc/(R*(Tc+T0))
phi1=0.44
phi2=phi1*10^(D*(Zc-0.27))
f=phi2*P
//results
printf("fugacity = %d kPa",f/10^3)
