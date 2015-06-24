clc
clear
//Initialization of variables
gam=62.4
pa=0
za=15 //ft
va=0
pg=0
zg=0
g=32.2 //ft/s^2
dg=2 //in
//calculations
vg= sqrt(2*g*(pa/gam +za+va^2 /(2*g) -pg/gam - zg))
Ag=%pi/4 *(dg/12)^2
Q=Ag*vg
//results
printf("discharge = %.2f ft^3/sec",Q)
