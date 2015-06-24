clc
//Initialization of variables
T1=85+460 //R
T2=T1
cp=0.24
P2=15 //psia
P1=30 //psia
//calculations
dS=cp*log(T2/T1) - 53.35/778 *log(P2/P1)
//results
printf("Change in entropy = %.4f B/lbm R",dS)
