clc
clear
//Initialization of variables
n1=8
n2=9
n3=1
n4=12.5
U11=3852
U12=115
U21=3009
U22=101
U31=24773
U32=640
U41=2539
U42=83
H=-2203389
//calculations
dU1=n1*(U11-U12)+n2*(U21-U22)
dU2=n3*(U31-U32)+n4*(U41-U42)
Q=H+dU1-dU2
//results
printf("Heat of reaction = %d Btu",Q)

