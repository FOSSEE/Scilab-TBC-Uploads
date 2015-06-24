//Solved Example Ex2.26 page no 61
clear
clc
R1=6//kΩ
R2=3//kΩ
V1=5//v
V2=10//v
Rth=(R1*R2/(R1+R2))
printf("Rth = %0.3f",Rth)
R2=(R1*Rth/(R1-Rth))
printf("\nR2 = %0.3f",R2)
