
//find the Thevenin equivalent for the network to the left of terminals a; b.
//Solved Example 1.7 
//page no 19
clear
clc
printf("\n find the The´venin equivalent for the network to the left of terminals a; b.")
V1=10//V
V2=15//V
R1=4//ohm
R2=6//ohm
I=(V1-V2)/(R1+R2)
printf("\n The value of I is =%0.2f A",I)
Vth=V1-I*R1
printf("\n The value of Thevenin Equivalent voltage=%0.2f V",Vth)
Zth=(R1*R2)/(R1+R2)
printf("\n The value of Thevenin Impedance =%0.2f  ohm",Zth)
