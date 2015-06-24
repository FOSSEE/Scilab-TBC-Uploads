//Example 5.9 page no 147
clear
clc
Vcc=15
Vee=4
Vbeq=0.7
Rb=500
Sb=((Vcc-Vbeq)/Rb)*10^3
printf("\n The value of Sb=%0.3f " ,Sb)
Icq=(Sb*(100-50))/1000
printf("\n The value of Icq=%0.3f mA" ,Icq)
