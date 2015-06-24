// Example 4.11, Page No-213
clear
clc

fa=200
fmax=fa

C1=0.1*10^-6
Rf=1/(2*%pi*fa*C1)
Rf=Rf/1000
printf("Rf= %.3f kohm", Rf)

fb=10*fa
R1=1/(2*%pi*fb*C1)
R1=R1/1000
printf("\nR1= %.3f kohm", R1)

Cf=R1*C1/Rf
Cf=Cf*10^6
printf("\nCf= %.2f uF", Cf)
