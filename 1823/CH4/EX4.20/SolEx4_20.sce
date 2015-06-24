//Find VGSQ
//Example 4.20 page no 128
clear
clc
Vdd=15          //V
R2=40           //kΩ
R1=60           //kΩ
Vgsq=(R2/(R2+R1))*Vdd
printf("\n Vgsq=%0.2f V" ,Vgsq)

