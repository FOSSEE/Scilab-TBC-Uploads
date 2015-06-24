clc
//initialisation of variables
clear
vom= 236 //ft/sec
as= 0.072 //ft
am= 62.4 //ft
ls1= 2 //ft
lm= 8 //ft
um= 248 //ft/sec
us= 3.86 //ft/sec
r= 0.4/3.3
//CALCULATIONS
voh= vom*as*ls1*um/(am*lm*us)
Ds= r*(as/am)*(um/us)^2*(ls1/lm)*(lm-ls1)
//RESULTS
printf ('Air speed = %.2f ft/sec',voh)
printf ('\n Drag force = %.3f lbf',Ds)
