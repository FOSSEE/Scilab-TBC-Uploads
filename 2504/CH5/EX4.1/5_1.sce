clc
//initialisation of variables
clear
w= 20 //lbm/sec
sh= 0.004
m1= 0.12 //lbm/sec
m2= 12.2 //lbm/sec
m3= 0.130 //lbm/sec
//CALCULATIONS
mw1= w/((1/sh)+1)
ma1= w-mw1
ma4= ma1-m2
mw4= mw1+m1-m3
mr= ma4+mw4
sh1= mw4/ma4
//RESULTS
printf ('mw1 = %.4f lbm/sec',mw1)
printf ('\n ma1 = %.2f lbm/sec',ma1)
printf ('\n ma4 = %.2f lbm/sec',ma4)
printf ('\n mw4 = %.2f lbm/sec',mw4)
printf ('\n mr = %.2f lbm/sec',mr)
printf ('\n specific humidity = %.5f lbm/sec',sh1)
