clc
//initialisation of variables
clear
vos= 70 //ft/sec
as= 78 //ft
am= 72 //ft
ls1= 6 //ft
lm= 2 //ft
um= 386 //ft/sec
us= 372 //ft/sec
dm= 0.4
//CALCULATIONS
vom= vos*as*ls1*um/(am*lm*us)
Ds= dm*(am/as)*(us/um)^2
//RESULTS
printf ('Air speed = %.f ft/sec',vom)
printf ('\n Ds = %.3f lbf',Ds)
