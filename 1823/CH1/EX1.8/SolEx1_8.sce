
//find the Norton equivalent for the network to the left of terminals a; b.
//Solved Example 1.8 page no 19
clear
clc
printf("\n find the Norton equivalent for the network to the left of termin")
V1=10//V
V2=15//V
R1=4//ohm
R2=6//ohm
Iab1=V1/R1
Iab2=V2/R2
printf("\n Then by superpostion ")
In=Iab1+Iab2
Zth=(R1*R2)/(R1+R2)
Yn=1/Zth//Rth=Zth
printf("\n The value of In =%0.2f A and Yn= %0.4f A",In,Yn)

