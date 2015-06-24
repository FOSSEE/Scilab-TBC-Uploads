clc
clear
//Initialization of variables
T2=920 //R
T1=520 //R
P1=14 //psia
P2=84 //psia
J=778
R=53.35
cv=0.1715
N=1
//calculations
k= log(T2/T1) /log(P2/P1)
n=1/(1-k)
cx=cv+R/(J*(1-n))
dS=N*cx*log(T2/T1)
//results
printf("Change in entropy  = %.5f unit of entropy",dS)
