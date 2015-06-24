clc
//Initialization of variables
P1=14.7 //psia
P4=14.7 //psia
T1=530 //R
T3=1960 //R
P2=60 //psia
P3=P2
g=1.4
eta1=0.85
eta2=0.9
//calculations
T2=T1*(P2/P1)^((g-1)/g)
T4=T3*(P4/P3)^((g-1)/g)
T2d=(T2-T1)/eta1 + T1
T4d=-eta2*(T3-T4) +T3
Wact=0.24*(T3-T4d - (T2d-T1))
Qh=0.24*(T3-T2d)
etath=Wact/Qh
//results
printf("Thermal efficiency = %.1f percent",etath*100)
