clc
clear
//Initialization of variables
hl=5
gam=62.4
pu=40 //psia
zu=25 //ft
vu=8 //ft/s
g=32.2 //ft/s^2
vl=8 //ft/s
zl=0 //ft
//calculations
pl= gam*(pu*144/gam +zu-zl-hl+ (vu^2 -vl^2)/(2*g))/144
//results
printf("Pressure at the lower end if friction is neglected = %.2f psig",pl)
