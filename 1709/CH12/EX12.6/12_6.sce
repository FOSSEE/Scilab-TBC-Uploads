clc
//Initialization of variables
P1=14.7 //psia
P4=100 //psia
T1=530 //R
T3=T1
g=1.4
m=10 //lbm
cp=0.24
//calculations
P2=sqrt(P1*P4)
T2=T1*(P2/P1)^((g-1)/g)
T4=T2
W=2*cp*(T2-T1)
Wt=W*m
hp=Wt*60/2545
Q=m*cp*(T2-T3)
T4=T1*(P4/P1)^((g-1)/g)
W2=m*cp*(T4-T1)
//results
printf("Work required in case 1  = %d Btu/min",Wt+1)
printf("\n Work required in case 2 = %d Btu/min",W2+1)
