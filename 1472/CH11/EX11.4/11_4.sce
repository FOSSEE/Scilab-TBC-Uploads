clc
//initialization of varaibles
P1=100 //psia
P2=10 //psia
T1=140 +460 //R
g=1.4
cp=0.248
//calculations
dh=g*55.16*T1*((P2/P1)^((g-1)/g) -1)/(g-1)
T2=T1*(P2/P1)^((g-1)/g)
dh2=cp*(T2-T1)
//results
printf("In method 1, Enthalpy = %d Btu/lb",dh*0.01286)
printf("\n In method 2, Enthalpy = %.1f ft lb/lb",dh2)
