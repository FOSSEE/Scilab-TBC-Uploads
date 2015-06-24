clc
//initialisation of variables
m= 0.100 //gms
kf= 1.86 //K/gms
dT= 0.300 //K
v= 2
//CALCULATIONS
T= kf*m
i= dT/T
a= (i-1)/(v-1)
//RESULTS
printf (' Degrees of ionisation = %.2f ',a)
