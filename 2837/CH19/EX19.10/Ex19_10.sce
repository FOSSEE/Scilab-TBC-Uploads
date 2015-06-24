clc
clear
//Initalization of variables
cp=0.24
h=138.8
t3=1960 //R
//calculations
t4d=t3-h/cp
Qs=cp*(t3-t4d)
work=43.9 //Btu/lb
etat=work/Qs *100
//results
printf("Thermal efficiency of the unit = %.1f percent",etat)
