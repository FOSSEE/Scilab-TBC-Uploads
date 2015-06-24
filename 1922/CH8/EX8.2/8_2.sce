clc
clear
//Initialization of variables
T=95 //C
P=1013 //kPa
Tc=135 //C
Pc=3648 //kPa
T0=273.1 //C
D=0.3
P0=1800 //kPa
D2=0.42
//calculations
Zc=0.283
Tr=(T+T0)/(Tc+T0)
Pr=P/Pc
phic=0.88
phi2=phic*10^(D*0.013)
Prd= P0/Pc
phi3=0.78
phi4= phi3*10^(D2*0.013)
gl= phi2*P/(phi3*P0)
//results
printf("equation is gl = %.3f *(y/x)",gl)
