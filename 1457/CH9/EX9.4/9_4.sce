clc
//Initialization of variables
g=32.2
A=0.0218 //ft^2
P1=25.6 //psia
T1=540 //K
k=1.4
R=1715
//calculations
G=g*A*P1*144/sqrt(T1) *sqrt(k/R *(2/(k+1))^((k+1)/(k-1)))
//results
printf("Flow rate  = %.2f lb/s",G)
