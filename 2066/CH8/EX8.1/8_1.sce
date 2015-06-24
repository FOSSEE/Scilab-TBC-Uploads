clc
clear
//Initialization of variables
pi=14.7 //psia
pf=50 //psia
cp=0.240 //Btu/lb R
cv=0.170 //Btu/lb R
J=778
T=60+459.6 //R
//calculations
R=J*(cp-cv)
k=cp/cv
gam=pi*144/(R*T)
V=1/gam
Vf=V*(pi/pf)^(1/k)
Tf=T*(pf*Vf/(pi*V))
//results
printf("Initial volume = %.2f ft^3",V)
printf("\n Final volume = %.2f cu ft",Vf)
printf("\n Final temperature = %.1f R",Tf)
