clc
clear
//Initialization of variables
H1=0.059
O1=0.199
C=0.66
S=0.011
//calculations
Qh1= 11.52*C+34.56*(H1-O1/8)+4.32*S
//results
printf("Theoretical air required = %.2f lb of air per lb of coal ",Qh1)
