clc
clear
//Initialization of variables
R=8.314
cp=35.58
n=100/16
T1=300 //K
T2=500 //K
k=1.305
P2=3 //Mpa
P1=0.5 //Mpa
Ts=290 //K
//calculations
cv=cp-R
Wi=n*R*T1/(k-1) *((P2/P1)^((k-1)/k) -1)
Hi=Wi
Ha=n*cp*(T2-T1)
eta=abs(Hi/Ha)
dss1=cp*log(T2/T1) - R*log(P2/P1)
Wl1=Ts*dss1
dss2=n*cp*log(T2/T1)
dss3=abs(Ha/Ts)
dsst=dss2+dss3
Wl2=-Ts*dss2 +Ha
Wlost=Wl1+Wl2
//results
printf("Thermodynamic efficiency = %.3f",eta)
printf("\n Net work lost = %d kJ",Wlost)
