
//find the The´venin impedance as the ratio of open-circuit voltage to short-circuit current
//Solved Example 1.9 page no 20
clear
clc
printf("\n find the The´venin impedance as the ratio of open-circuit voltage to short-circuit current")
V1=10//V
V2=15//V
R1=4//ohm
R2=6//ohm
I=(V1-V2)/(R1+R2)
printf("\n The value of I is =%0.2f A",I)
Vth=V1-I*R1
Iab1=V1/R1
Iab2=V2/R2
printf("\n Then by superpostion ")
In=Iab1+Iab2
Zth=Vth/In
printf("\n The value of Zth is =%0.2f ohm",Zth)

