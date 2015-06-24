clc
//initialization of varaibles
P1=75 //psia
P2=15 //psia
V1=6 //cu ft
g=1.2
m=3
//calculations
V2=V1*(P1/P2)^(1/g)
U=0.48*(P2*V2-P1*V1)
W=(P2*V2-P1*V1)*144/((1-g)*778)
Q=U+W
//results
printf("Heat = %.3f Btu",Q)
//The answer given in textbook is wrong. please check using a calculator
