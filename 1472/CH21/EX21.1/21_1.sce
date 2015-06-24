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
Q=cv*(n-n2)*778*T1*((P2/P1)^((n2-1)/n2) -1) /(1-n2)
//results
printf("\n Work in case 1 = %d ft lb/lb",Wk)
printf("\n Work in case 2 = %d ft lb/lb",Wn)
printf("\n Work in case 3 = %d ft lb/lb",Wt)
printf("\n Heat transferred = %.1f B/lb",Q*0.001305)
