clc
// from figure 4.5
v = 60 //  cutting speed m/min.
f = 0.375 // feed in mm/rev
D = 38 // mm
N = (1000*60)/(%pi*D) // rev/min
l = 32 // mm
Tm = l/(f*N) // min
printf("\n Time to turn external relief = %0.2f min." , Tm )
