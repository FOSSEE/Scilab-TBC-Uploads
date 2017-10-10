clc;
clear;
Na=3*10^18 //in cm^-3
Nd=2*10^16 //in cm^-3
Dn=25 //in cm^2/s
Dp=10 //in cm^2/s
tau_n0=4*10^-7 //in s
tau_p0=10^-7 //in s
JL=20*10^-3 //photocurrent density in mA/cm^2
T=300 //in K
ni=1.5*10^10 //in cm^-3
e=1.6*10^-19 //in Joules
Const=0.026 //constant for KT/e in V

//Calculation
Ln=sqrt(Dn*tau_n0) //in mmicro-m
Lp=sqrt(Dp*tau_p0) //in micro-m
JS=e*ni^2*((Dn/(Ln*Na))+(Dp/(Lp*Nd))) //reverse saturation current density in A/cm^2
Voc=Const*log(1+(JL/JS))

mprintf("open-circuit voltage Voc= %0.3f V",Voc)
