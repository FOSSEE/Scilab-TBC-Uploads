clc
clear
//Initialization of variables
m1=322.3 //Mass of Co2
m2=2 //Mass of SO2
m3=926 //Mass of N2
basis=121.94 //Basis taken
//calculations
m=m1+m2+m3
ratio=m/basis
dh=5777 //Btu/mol
h1=dh*7.364
h2=14037
h3=130501
H=h1+h2+h3
hrat=H/basis
//results
printf("Mass of dry flue gases = %.2f lbm dry flue gas/lbm fuel ash and moisture free",m/100)
printf("\n Mass of dry flue gases = %.2f lbm dry flue gas/lbm fuel as fired ",ratio)
printf("\n Energy carried away = %.1f btu/mol coal as fired which is same as  = %.1f Btu/lbm mol coal ",H, hrat)
disp("The answers are a bit different due to rounding off errors in textbook")
