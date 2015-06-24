clc
//Initialization of variables
T2=860 //R
phi1=0.78767
phi2=0.71323
P2=30 //psia
P1=100 //psia
//calculations
dS=phi2-phi1- 53.35/778 *log(P2/P1)
//results
printf("Net change of entropy = %.5f B/lbm R",dS)
