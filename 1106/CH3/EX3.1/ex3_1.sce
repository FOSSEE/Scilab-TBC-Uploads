// Example 3.1, page no-107
clear
clc

Vp=15
Vm=-15
R5=40*10^3
Vbe11=0.7
Vbe12=Vbe11

Iref= (Vp-Vbe12-Vbe11-Vm)/R5

Iref=Iref*10^3
printf("Iref= %.3f mA", Iref)

