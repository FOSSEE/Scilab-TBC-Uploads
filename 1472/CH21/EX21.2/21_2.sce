clc
//initialization of varaibles
R=53.34
T1=540 //R
n=1.4
g=n
n2=1.3
P2=90 //psia
P1=15 //psia
cv=0.171
//calculations
pv=R*T1
Wk=n*R*T1*((P2/P1)^((g-1)/g) -1) /(n-1)
Wn=n2*R*T1*((P2/P1)^((n2-1)/n2) -1) /(n2-1)
Wt=R*T1*log(P2/P1)
eta1=Wt/Wn
eta2=Wk/Wn
//results
printf("Adiabatic efficiency = %.2f",eta2)
printf("\n Isothermal efficiency = %.2f",eta1)
