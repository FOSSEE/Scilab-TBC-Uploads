clc
clear
//Initialization of variables
p1=100 //psia
p2=10 //psia
n=1.3
T1=800 //R
cv=0.172
R=1.986/29
//calculations
T2=T1*(p2/p1)^((n-1)/n)
dwir=cv*(T1-T2)
dwr=R*(T2-T1)/(1-n)
dq=dwr-dwir
//results
printf("The friction of the process per pound of air = %.1f Btu/lbm",dq)
