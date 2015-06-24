clear
clc
//initialisation of variables
W1= 7640 //gal/min
W2= 11400 //gal/min
Hm= 63 //ft
Hm1= 80 //ft
ep1= 72 //per cent
ep2= 76 //per cent
//CALCULATIONS
whp1= W1*Hm/(60*550)
whp2= W2*Hm1/(60*550)
bhp1= whp1*100/ep1
bhp2= whp2*100/ep2
w1= W2/10
//RESULTS
printf ('For both pumps discharge = %.f gal/min against an 80-ft head',W2)
printf ('\n delivery from one pump = %.1f h.p ',bhp1)
printf ('\n delivery from two pumps = %.1f h.p ',bhp2)
