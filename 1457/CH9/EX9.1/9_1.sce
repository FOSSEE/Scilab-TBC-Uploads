clc
//Initialization of variables
T2=30 //C
T1=20 //C
cv=716
m=15 //kg
cp=1003
//calculations
di=cv*(T2-T1)
dU=di*m
dh=cp*(T2-T1)
dH=dh*m
//results
printf("Change in Internal energy = %d N m",dU)
printf("\n Change in Enthalpy = %d Nm",dH)
