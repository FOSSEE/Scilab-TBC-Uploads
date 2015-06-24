clc
//Initialization of variables
cv=716
m=15 //kg
cp=1003
T1=20+273 //K
k=1.4
ratio=0.4
//calculations
T2=(T1)*(1/ratio)^(k-1)
P1=95 //kN/m^2
P2=P1*T2/(T1)/ratio
di=cv*(T2-T1)
dU=di*m
dh=cp*(T2-T1)
dH=dh*m
//results
printf("Final temperature = %d K",T2)
printf("\n Final pressure = %d kN/m^2",P2)
printf("\n Change in Internal energy = %d N m",dU)
printf("\n Change in Enthalpy = %d Nm",dH)
//The answers are a bit different due to rounding off error.
