clc
//Initialization of variables
T1=100+460 //R
P1=15//psia
P2=50 //psia
n=1.3
cp=0.24
//calculations
T2=T1*(P2/P1)^((n-1)/n)
dS=cp*log(T2/T1) - 53.35/778 *log(P2/P1) 
//results
printf("Change in entropy = %.3f B/lbm R",dS)
//the answer given in textbook is wrong. Please check it using a calculator
