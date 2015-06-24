clc
//initialisation of variables
dtp= 120 //in
dpd= 48 //in
vim= 1.25 //ft/sec
vip= 5 //ft/sec
lp = 600 //ft
lm= 40 //ft
//CALCULATIONS
Rm= (dtp/dpd)^2/((lp/lm)*(vim/vip)^2)
d= sqrt(4*Rm)
//RESULTS
printf ('Diameter = %.2f in ',d)
