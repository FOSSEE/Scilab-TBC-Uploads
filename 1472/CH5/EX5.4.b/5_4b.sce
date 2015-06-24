clc
//initialization of varaibles
P1=75 //psia
P2=15 //psia
V1=6 //cu ft
g=1.2
m=3
//calculations
Q=30 //Btu
V2=V1*(P1/P2)^(1/g)
U=0.48*(P2*V2-P1*V1)
W=Q-U
//results
printf("Work done = %.1f  Btu",W)
//The answer given in textbook is wrong. please check using a calculator
