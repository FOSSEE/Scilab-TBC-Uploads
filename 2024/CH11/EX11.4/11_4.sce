clc
//Initialization of variables
m1=322.3
m2=2
m3=926
basis=121.94
//calculations
m=m1+m2+m3
ratio=m/basis
dh=5776.6 //Btu/mol
h1=dh*7.364
h2=14064.3
h3=130565.5
H=h1+h2+h3
hrat=H/basis
//results
printf("Mass of dry flue gases = %.2f lbm dry flue gas/lbm fuel ash and moisture free",ratio)
printf("\n Energy carried away = %.1f btu/mol coal as fired  = %.1f Btu/lbm mol coal ",H, hrat)
