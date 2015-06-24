clc
//Initialization of variables
cp=0.25
T1=3460 //R
T2=520 //R
//calculations
Q=cp*(T2-T1)
ds=cp*log(T2/T1)
G= Q - T2*ds
eta= G/Q
//results
printf("Thermal efficiency = %.1f percent",eta*100)
