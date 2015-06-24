// Example 2.4, page no-42
clear
clc

Vcc=20
R1=19300
Vbe=0.7
Ic2=0.000005
Vt=0.026

Ic1=(Vcc-Vbe)/R1

R2=(Vt/Ic2)*log(Ic1/Ic2)

Ic1=Ic1/10^-3
R2=R2/10^3
printf("Ic1= %d mA",Ic1)
printf("\nR2= %.2f kohm",R2)
