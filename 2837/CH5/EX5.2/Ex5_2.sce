clc
clear
//Initialization of variables
m=90 //lbm
T=200+459.7 //R
Tc=232.7+459.7 //R
R0=1545
M=120.9
V=30 //cu ft
//calculations
R=R0/M
disp("From fig 5.5")
z=0.883
P=z*R*m*T/V/144
vc=V/m
P2=156.1 //psia
//results
printf("Pressure obtained = %.2f psia",P)
printf("\n Theoretical pressure = %.1f psia",P2)
