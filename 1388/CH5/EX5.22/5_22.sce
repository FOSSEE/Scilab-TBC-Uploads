clc
//initialisation of variables
p= 1820 //mm
n= 2.5 //mole percent
f= 0.470
m= 0.530
P= 420 //mm
n1= 9.75 //percent
//CALCULATIONS
P1= p*n/(100*760)
F= f/P1
F1= f*760*100/(P*n1)
//RESULTS
printf (' activity coefficient of acetone = %.1f ',F)
printf (' \n activity coefficient of water = %.1f ',F1)
