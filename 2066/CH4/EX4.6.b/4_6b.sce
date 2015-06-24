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
d=4 //in
dg=2 //in
zd=25  //ft
//calculations
vg= sqrt(2*g*(pa/gam +za+va^2 /(2*g) -pg/gam - zg))
Ag=%pi/4 *(dg/12)^2
Q=Ag*vg
A=%pi/4 *(d/12)^2
v4=Q/A
pc=-v4^2 *gam/(2*g*144)
pgd= za-zd - v4^2 /(2*g)
pd=pgd*gam/144
pe=-v4^2 *gam/(2*g*144)
pfg= za- v4^2 /(2*g)
pf=pfg*gam/144
//results
printf("Pressure at C = %.2f psig",pc)
printf("\n Pressure at D = %.2f psig",pd)
printf("\n Pressure at E = %.2f psig",pe)
printf("\n Pressure at F = %.2f psig",pf)
